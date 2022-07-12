// swift-tools-version:5.6

import PackageDescription

let SwiftWinRT = Package(
  name: "Samples",
  products: [
    .library(name: "Calc", type: .dynamic, targets: ["Calc"]),
  ],
    dependencies : [
    .package(name: "WinRT", path: "../../WinRT"),
    ],
  targets: [
    .target(name: "C"),
    .target(name: "Calc", dependencies: ["C", "WinRT"],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ],
            linkerSettings: [
              // need /MANIFEST:embed for bootstrap Windows App SDK to work
              .unsafeFlags(["-Xlinker"]),
              .unsafeFlags(["/MANIFEST:embed"]),
            ]
            ),
  ]
)
