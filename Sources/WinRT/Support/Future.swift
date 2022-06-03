// Copyright © 2021 Saleem Abdulrasool <compnerd@compnerd.org>
// SPDX-License-Identifier: BSD-3

import CWinRT

internal protocol Future {
  associatedtype ValueType
  func get() throws -> ValueType
}

extension Windows.Foundation.IAsyncAction: Future {
  private final class CompletedHandler: Windows.Foundation.AsyncActionCompletedHandler {
    private var hEvent: HANDLE

    public init(signal event: HANDLE) {
      self.hEvent = event
      super.init()
    }

    override func Invoke(asyncInfo: Windows.Foundation.IAsyncAction?,
                         asyncStatus: Windows.Foundation.AsyncStatus) throws {
      _ = SetEvent(self.hEvent)
    }
  }

  internal func get() throws -> Void {
    let info: Windows.Foundation.IAsyncInfo = try QueryInterface()
    if try info.get_Status() == Windows.Foundation.AsyncStatus.Started {
      let event: HANDLE =
          CreateEventW(nil, /*bManualReset=*/true, /*DefaultValue=*/false, nil)
      // TODO(compnerd) validate event
      defer { _ = CloseHandle(event) }

      let completion: Windows.Foundation.AsyncActionCompletedHandler =
          Windows.Foundation.IAsyncAction.CompletedHandler(signal: event)
      try withExtendedLifetime(completion) {
        try self.put_Completed(handler: completion.Interface())
        _ = WaitForSingleObject(event, INFINITE)
      }
    }
    try self.GetResults()
  }
}
