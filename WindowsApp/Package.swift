// swift-tools-version:5.3

import PackageDescription

let SwiftWinRT = Package(
  name: "WindowsApp",
  products: [
    .library(name: "WindowsApp", type: .dynamic, targets: ["WindowsApp"]),
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
              // need /MANIFEST:embed for bootstrap Windows App SDK to work
              .unsafeFlags(["-Xlinker"]),
              .unsafeFlags(["/MANIFEST:embed"]),
              .linkedLibrary("Microsoft.WindowsAppRuntime.Bootstrap"),
              .linkedLibrary("Microsoft.WindowsAppRuntime"), // TODO need this?
              .linkedLibrary("Ole32"),
            ]
            ),
  ]
)
