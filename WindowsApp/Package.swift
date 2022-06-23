// swift-tools-version:5.3

import PackageDescription

let SwiftWinRT = Package(
  name: "WindowsApp",
  products: [
    .library(name: "WindowsApp", targets: ["WindowsApp"]),
  ],
    dependencies : [
    .package(name: "WinRT", path: "../WinRT"),
    .package(name: "WindowsSdk", path: "../WindowsSdk"),
    ],
  targets: [
    .target(name: "CWindowsApp"),
    .target(name: "WindowsApp", 
            dependencies: ["WinRT", "WindowsSdk", "CWindowsApp"],
            linkerSettings: [
              .linkedLibrary("Ole32"),
            ]
            ),
  ]
)
