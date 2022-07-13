// swift-tools-version:5.6

import PackageDescription

let SwiftWinRT = Package(
  name: "Samples",
  products: [
    .executable(name: "SystemIdentification", targets: ["SystemIdentification"]),
  ],
    dependencies : [
    .package(name: "WinRT", path: "../../WinRT"),
    ],
  targets: [
    .target(name: "C"),
    .executableTarget(name: "SystemIdentification", dependencies: ["C", "WinRT"],
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
