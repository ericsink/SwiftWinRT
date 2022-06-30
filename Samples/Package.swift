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
    .package(name: "WinRT", path: "../WinRT"),
    .package(name: "WindowsSdk", path: "../WindowsSdk"),
    .package(name: "WindowsApp", path: "../WindowsApp"),
    .package(name: "Win2D", path: "../Win2D"),
    ],
  targets: [
    .target(name : "Chipmunk2D",
            cSettings: [
              .unsafeFlags(["-I", "Sources/Chipmunk2D"]),
            ]
        ),
    .target(name: "Power", dependencies: ["WindowsApp", "WinRT"],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ],
            linkerSettings: [
              // need /MANIFEST:embed for bootstrap Windows App SDK to work
              .unsafeFlags(["-Xlinker"]),
              .unsafeFlags(["/MANIFEST:embed"]),
            ]
            ),
    .target(name: "XamlApp", 
            dependencies: ["WindowsApp", "WindowsSdk", "WinRT"],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ],
            linkerSettings: [
              // need /MANIFEST:embed for bootstrap Windows App SDK to work
              .unsafeFlags(["-Xlinker"]),
              .unsafeFlags(["/MANIFEST:embed"]),
            ]
            ),
    .target(name: "Physics", 
            dependencies: ["WindowsApp", "Win2D", "WindowsSdk", "WinRT", "Chipmunk2D"],
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
    .target(name: "Canvas", 
            dependencies: ["WindowsApp", "Win2D", "WindowsSdk", "WinRT"],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ],
            linkerSettings: [
              // need /MANIFEST:embed for bootstrap Windows App SDK to work
              .unsafeFlags(["-Xlinker"]),
              .unsafeFlags(["/MANIFEST:embed"]),
            ]
            ),
    .target(name: "MazeGame", dependencies: ["WindowsApp", "Win2D", "WindowsSdk", "WinRT"],
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
            ]
            ),
    .target(name: "HttpClient", dependencies: ["WindowsSdk", "WinRT"],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ],
            linkerSettings: [
              // need /MANIFEST:embed for bootstrap Windows App SDK to work
              .unsafeFlags(["-Xlinker"]),
              .unsafeFlags(["/MANIFEST:embed"]),
            ]
            ),
    .target(name: "Toast", dependencies: ["WindowsSdk", "WinRT"],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ],
            linkerSettings: [
              // need /MANIFEST:embed for bootstrap Windows App SDK to work
              .unsafeFlags(["-Xlinker"]),
              .unsafeFlags(["/MANIFEST:embed"]),
            ]
            ),
    .target(name: "DispatcherQueue", dependencies: ["WindowsSdk", "WinRT"],
            swiftSettings: [
              .unsafeFlags(["-parse-as-library"]),
            ],
            linkerSettings: [
              // need /MANIFEST:embed for bootstrap Windows App SDK to work
              .unsafeFlags(["-Xlinker"]),
              .unsafeFlags(["/MANIFEST:embed"]),
            ]
            ),
    .target(name: "SystemIdentification", dependencies: ["WindowsSdk", "WinRT"],
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
