// swift-tools-version:5.3

import PackageDescription

let SwiftWinRT = Package(
  name: "Win2D",
  products: [
    .library(name: "Win2D", type: .dynamic, targets: ["Win2D"]),
  ],
    dependencies : [
    .package(name: "WinRT", path: "../WinRT"),
    .package(name: "WindowsSdk", path: "../WindowsSdk"),
    .package(name: "WindowsApp", path: "../WindowsApp"),
    ],
  targets: [
    .target(name: "CWin2D"),
    .target(name: "Win2D", 
            dependencies: ["WindowsApp", "CWin2D", "WindowsSdk", "WinRT"],
            linkerSettings: [
              .linkedLibrary("Ole32"),
            ]
            ),
  ]
)
