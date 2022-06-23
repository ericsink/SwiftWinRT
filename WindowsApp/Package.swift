// swift-tools-version:5.3

import PackageDescription

let SwiftWinRT = Package(
  name: "WindowsApp",
  products: [
    .library(name: "WindowsApp", targets: ["WindowsApp"]),
  ],
    dependencies : [
    .package(name: "WinRT", path: "../WinRT"),
    ],
  targets: [
    .target(name: "CWindowsApp"),
    .target(name: "WindowsApp", 
            dependencies: ["WinRT", "CWindowsApp"],
            linkerSettings: [
              .linkedLibrary("Ole32"),
            ]
            ),
  ]
)
