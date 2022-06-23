// swift-tools-version:5.3

import PackageDescription

let SwiftWinRT = Package(
  name: "Win2D",
  products: [
    .library(name: "Win2D", targets: ["Win2D"]),
  ],
    dependencies : [
    .package(name: "WindowsApp", path: "../WindowsApp"),
    ],
  targets: [
    .target(name: "CWin2D"),
    .target(name: "Win2D", 
            dependencies: ["WindowsApp", "CWin2D"],
            linkerSettings: [
              .linkedLibrary("Ole32"),
            ]
            ),
  ]
)
