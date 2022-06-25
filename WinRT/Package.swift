// swift-tools-version:5.3

import PackageDescription

let SwiftWinRT = Package(
  name: "WinRT",
  products: [
    .library(name: "WinRT", type: .dynamic, targets: ["WinRT"]),
  ],
  targets: [
    .target(name: "CWinRT"),
    .target(name: "WinRT", dependencies: ["CWinRT"],
            linkerSettings: [
              .linkedLibrary("Ole32"),
            ]
            ),
  ]
)
