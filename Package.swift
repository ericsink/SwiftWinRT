// swift-tools-version:5.3

import PackageDescription

let SwiftWinRT = Package(
  name: "SwiftWinRT",
  products: [
    .executable(name: "SystemIdentification", targets: ["SystemIdentification"]),
    .executable(name: "DispatcherQueue", targets: ["DispatcherQueue"]),
    .executable(name: "Toast", targets: ["Toast"]),
    .executable(name: "Power", targets: ["Power"]),
    .executable(name: "HttpClient", targets: ["HttpClient"]),
    .executable(name: "App", targets: ["App"]),
    .library(name: "SwiftWinRT", targets: ["WinRT"]),
  ],
  targets: [
    .target(name: "CWinRT"),
    .target(name: "WinRT", dependencies: ["CWinRT"],
            exclude: ["sg/README.md"],
            linkerSettings: [
              .linkedLibrary("Ole32"),
            ]),
    .target(name: "Power", dependencies: ["WinRT"],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ]),
    .target(name: "App", dependencies: ["WinRT"],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ]),
    .target(name: "HttpClient", dependencies: ["WinRT"],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ]),
    .target(name: "Toast", dependencies: ["WinRT"],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ]),
    .target(name: "DispatcherQueue", dependencies: ["WinRT"],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ]),
    .target(name: "SystemIdentification", dependencies: ["WinRT"],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ]),
  ]
)
