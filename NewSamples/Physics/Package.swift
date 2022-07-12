// swift-tools-version:5.6

import PackageDescription

let SwiftWinRT = Package(
  name: "Samples",
  products: [
    .executable(name: "Physics", targets: ["Physics"]),
  ],
    dependencies : [
    .package(name: "WinRT", path: "../../WinRT"),
    ],
  targets: [
    .target(name : "Chipmunk2D",
            cSettings: [
              .unsafeFlags(["-I", "Sources/Chipmunk2D"]),
            ]
        ),
    .target(name: "C"),
    .executableTarget(name: "Physics", dependencies: ["C", "WinRT", "Chipmunk2D"],
            cSettings: [
              .unsafeFlags(["-I", "Sources/Chipmunk2D"]),
            ],
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
