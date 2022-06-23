// swift-tools-version:5.3

import PackageDescription

let SwiftWinRT = Package(
  name: "Samples",
  products: [
    .executable(name: "SystemIdentification", targets: ["SystemIdentification"]),
    .executable(name: "DispatcherQueue", targets: ["DispatcherQueue"]),
    .executable(name: "Toast", targets: ["Toast"]),
    .executable(name: "Power", targets: ["Power"]),
    .executable(name: "HttpClient", targets: ["HttpClient"]),
    .executable(name: "XamlApp", targets: ["XamlApp"]),
    .executable(name: "Canvas", targets: ["Canvas"]),
    .executable(name: "MazeGame", targets: ["MazeGame"]),
  ],
    dependencies : [
    .package(name: "WindowsApp", path: "../WindowsApp"),
    ],
  targets: [
    .target(name: "Power", dependencies: ["WindowsApp"],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ],
            linkerSettings: [
              // need /MANIFEST:embed for bootstrap Windows App SDK to work
              .unsafeFlags(["-Xlinker"]),
              .unsafeFlags(["/MANIFEST:embed"]),
              .linkedLibrary("Microsoft.WindowsAppRuntime.Bootstrap"),
            ]
            ),
    .target(name: "XamlApp", dependencies: ["WindowsApp"],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ],
            linkerSettings: [
              // need /MANIFEST:embed for bootstrap Windows App SDK to work
              .unsafeFlags(["-Xlinker"]),
              .unsafeFlags(["/MANIFEST:embed"]),
              .linkedLibrary("Microsoft.WindowsAppRuntime.Bootstrap"),
            ]
            ),
    .target(name: "Canvas", dependencies: ["WindowsApp"],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ],
            linkerSettings: [
              // need /MANIFEST:embed for bootstrap Windows App SDK to work
              .unsafeFlags(["-Xlinker"]),
              .unsafeFlags(["/MANIFEST:embed"]),
              .linkedLibrary("Microsoft.WindowsAppRuntime.Bootstrap"),
            ]
            ),
    .target(name: "MazeGame", dependencies: ["WindowsApp"],
            resources: [
                .process("Assets")
            ],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ],
            linkerSettings: [
              // need /MANIFEST:embed for bootstrap Windows App SDK to work
              .unsafeFlags(["-Xlinker"]),
              .unsafeFlags(["/MANIFEST:embed"]),
              .linkedLibrary("Microsoft.WindowsAppRuntime.Bootstrap"),
            ]
            ),
    .target(name: "HttpClient", dependencies: ["WindowsApp"],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ],
            linkerSettings: [
              // need /MANIFEST:embed for bootstrap Windows App SDK to work
              .unsafeFlags(["-Xlinker"]),
              .unsafeFlags(["/MANIFEST:embed"]),
              .linkedLibrary("Microsoft.WindowsAppRuntime.Bootstrap"),
            ]
            ),
    .target(name: "Toast", dependencies: ["WindowsApp"],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ],
            linkerSettings: [
              // need /MANIFEST:embed for bootstrap Windows App SDK to work
              .unsafeFlags(["-Xlinker"]),
              .unsafeFlags(["/MANIFEST:embed"]),
              .linkedLibrary("Microsoft.WindowsAppRuntime.Bootstrap"),
            ]
            ),
    .target(name: "DispatcherQueue", dependencies: ["WindowsApp"],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ],
            linkerSettings: [
              // need /MANIFEST:embed for bootstrap Windows App SDK to work
              .unsafeFlags(["-Xlinker"]),
              .unsafeFlags(["/MANIFEST:embed"]),
              .linkedLibrary("Microsoft.WindowsAppRuntime.Bootstrap"),
            ]
            ),
    .target(name: "SystemIdentification", dependencies: ["WindowsApp"],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ],
            linkerSettings: [
              // need /MANIFEST:embed for bootstrap Windows App SDK to work
              .unsafeFlags(["-Xlinker"]),
              .unsafeFlags(["/MANIFEST:embed"]),
              .linkedLibrary("Microsoft.WindowsAppRuntime.Bootstrap"),
            ]
            ),
  ]
)
