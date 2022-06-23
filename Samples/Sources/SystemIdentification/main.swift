// Copyright © 2021 Saleem Abdulrasool <compnerd@compnerd.org>
// SPDX-License-Identifier: BSD-3

import WinRT
import WindowsSdk

@main
class WinRTDemo {
  public static func main() throws {
    try RoInitialize()

    let buffer = try Windows.System.Profile.SystemIdentification.GetSystemIdForPublisher()!

    let id = try buffer.Id!

    let hex: String =
        try Windows.Security.Cryptography.CryptographicBuffer.EncodeToHexString(buffer: id)
    let base64: String =
        try Windows.Security.Cryptography.CryptographicBuffer.EncodeToBase64String(buffer: id)

    print("System ID for Publisher [hex]: \(hex)")
    print("System ID for Publisher [base64]: \(base64)")
  }
}

