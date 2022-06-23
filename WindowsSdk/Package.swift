// swift-tools-version:5.3

import PackageDescription

let SwiftWinRT = Package(
  name: "WindowsSdk",
  products: [
    .library(name: "WindowsSdk", targets: ["WindowsSdk"]),
  ],
    dependencies : [
    .package(name: "WinRT", path: "../WinRT"),
    ],
  targets: [
    .target(name: "CWindowsSdk"),
    .target(name: "WindowsSdk", 
            dependencies: ["WinRT", "CWindowsSdk"],
            linkerSettings: [
              .linkedLibrary("Ole32"),
            ]
            ),
  ]
)
