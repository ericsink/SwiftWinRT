// swift-tools-version:5.3

import PackageDescription

let SwiftWinRT = Package(
  name: "SwiftWinRT",
  products: [
    .executable(name: "SystemIdentification", targets: ["SystemIdentification"]),
    .executable(name: "DispatcherQueue", targets: ["DispatcherQueue"]),
    .executable(name: "Toast", targets: ["Toast"]),
    .executable(name: "Power", targets: ["Power"]),
    .executable(name: "HttpClient", targets: ["HttpClient"]),
    .executable(name: "XamlApp", targets: ["XamlApp"]),
    .executable(name: "Canvas", targets: ["Canvas"]),
    .library(name: "SwiftWinRT", targets: ["WinRT"]),
  ],
  targets: [
    .target(name: "CWinRT"),
    .target(name: "WinRT", dependencies: ["CWinRT"],
            exclude: ["sg/README.md"],
            linkerSettings: [
              .linkedLibrary("Ole32"),
            ]
            ),
    .target(name: "Power", dependencies: ["WinRT"],
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
    .target(name: "XamlApp", dependencies: ["WinRT"],
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
    .target(name: "Canvas", dependencies: ["WinRT"],
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
    .target(name: "HttpClient", dependencies: ["WinRT"],
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
    .target(name: "Toast", dependencies: ["WinRT"],
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
    .target(name: "DispatcherQueue", dependencies: ["WinRT"],
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
    .target(name: "SystemIdentification", dependencies: ["WinRT"],
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
