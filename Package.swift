// swift-tools-version:5.3

import PackageDescription

let SwiftWinRT = Package(
  name: "SwiftWinRT",
  products: [
    .executable(name: "WinRTDemo", targets: ["WinRTDemo"]),
    .executable(name: "WinRTAsyncDemo", targets: ["WinRTAsyncDemo"]),
    .executable(name: "WinRTToastDemo", targets: ["WinRTToastDemo"]),
    .executable(name: "HttpClient", targets: ["HttpClient"]),
    .library(name: "SwiftWinRT", targets: ["WinRT"]),
  ],
  targets: [
    .target(name: "CWinRT"),
    .target(name: "WinRT", dependencies: ["CWinRT"],
            exclude: ["sg/README.md"],
            linkerSettings: [
              .linkedLibrary("Ole32"),
            ]),
    .target(name: "HttpClient", dependencies: ["WinRT"],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ]),
    .target(name: "WinRTToastDemo", dependencies: ["WinRT"],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ]),
    .target(name: "WinRTAsyncDemo", dependencies: ["WinRT"],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ]),
    .target(name: "WinRTDemo", dependencies: ["WinRT"],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ]),
  ]
)
