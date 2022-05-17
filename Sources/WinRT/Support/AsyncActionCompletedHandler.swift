// Copyright © 2021 Saleem Abdulrasool <compnerd@compnerd.org>
// SPDX-License-Identifier: BSD-3

import CWinRT

extension WinRT.Windows.Foundation {
open class AsyncActionCompletedHandler {
    private static var vtable: __q_CWindows_CFoundation_CIAsyncActionCompletedHandlerVtbl = .init(
      // MARK - IUnknown Methods
      QueryInterface: {
        guard let pUnk = $0, let riid = $1, let ppvObject = $2 else {
          return E_INVALIDARG
        }

        switch riid.pointee {
        case IUnknown.IID, WinRT.Windows.Foundation.IAsyncActionCompletedHandler.IID:
          _ = pUnk.pointee.lpVtbl.pointee.AddRef(pUnk)
          ppvObject.pointee = UnsafeMutableRawPointer(pUnk)
          return S_OK

        default:
          ppvObject.pointee = nil
          return E_NOINTERFACE
        }
      },
      AddRef: {
        let instance = Windows.Foundation.AsyncActionCompletedHandler.from($0)
        _ = instance?.retain()
        return ULONG(_getRetainCount(instance!.takeUnretainedValue()))
      },
      Release: {
        let instance = Windows.Foundation.AsyncActionCompletedHandler.from($0)
        return ULONG(_getRetainCount(instance!.takeRetainedValue()))
      },

      // MARK - IAsyncActionCompletedHandler Methods
      Invoke: {
        guard let self = Windows.Foundation.AsyncActionCompletedHandler.from($0)?.takeUnretainedValue() else {
          return E_INVALIDARG
        }
        return self.Invoke(asyncInfo: WinRT.Windows.Foundation.IAsyncAction($1), asyncStatus: $2)
      }
    )

  internal struct WithTrailingObjects {
    public var `super`: __q_CWindows_CFoundation_CIAsyncActionCompletedHandler
    public var wrapper: Unmanaged<AsyncActionCompletedHandler>?
  }
  internal var instance: WithTrailingObjects

  public init() {
    self.instance = WithTrailingObjects(super: __q_CWindows_CFoundation_CIAsyncActionCompletedHandler(lpVtbl: &Self.vtable), wrapper: nil)
    self.instance.wrapper = Unmanaged<AsyncActionCompletedHandler>.passUnretained(self)
  }

  fileprivate static func from(_ pUnk: UnsafeMutableRawPointer?) -> Unmanaged<AsyncActionCompletedHandler>? {
    return pUnk?.bindMemory(to: AsyncActionCompletedHandler.WithTrailingObjects.self, capacity: 1).pointee.wrapper
  }

  open func Invoke(asyncInfo: WinRT.Windows.Foundation.IAsyncAction?, asyncStatus: WinRT.Windows.Foundation.AsyncStatus) -> HRESULT {
    return S_OK
  }

    internal func Interface()
        -> WinRT.Windows.Foundation.IAsyncActionCompletedHandler {
      return withUnsafeMutablePointer(to: &self.instance.super) {
        WinRT.Windows.Foundation.IAsyncActionCompletedHandler(UnsafeMutableRawPointer($0))
      }
    }
}
}

