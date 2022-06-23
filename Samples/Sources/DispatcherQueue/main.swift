// Copyright © 2021 Saleem Abdulrasool <compnerd@compnerd.org>
// SPDX-License-Identifier: BSD-3

import WinRT
import WindowsApp

@main
class WinRTAsyncDemo {
  public static func main() async throws {
    try RoInitialize()

    let controller = try Windows.System.DispatcherQueueController.CreateOnDedicatedThread()!

    try await controller.ShutdownQueue()

    print("Done!")
  }
}
