
Notes on this fork
-----------

This fork of compnerd/SwiftWinRT contains some work
I've been doing toward automatic generation of the
Swift bindings for WinRT.  It has changed very
significantly from the original repo.

There are five SwiftPM packages here:

- WinRT contains the core definitions for supporting
IInspectable and such.  It is largely similar to
the original repo.

- WindowsSdk contains automatically generated bindings
for a bunch of WinRT things in the Windows SDK.
It's not complete.

- WindowsApp contains automatically generated bindings
for a bunch of WinRT things in the Windows App SDK.
Oh, and also, it's not complete.

- Win2D contains automatically generated bindings
for Win2D.
Oh, and also, it's not complete.

- Samples contains several sample apps.

----

The two original samples are still here and have been
modified a little bit to build with the new bindings.

A new toast notification sample has been added.

The most complete sample is MazeGame, a Swift port
of the Win2DMazeGame sample from Microsoft.  It
uses WinUI3 for a simple GUI shell and Win2D for
the game itself.

The generator itself is not here, and is (currently)
not open souce, sorry.  It's part of a larger project
I've been working on.

-----------
The original README content follows below.

Swift/WinRT
-----------

(CI badge deleted here)

Bridging to WinRT (Windows Runtime) to [Swift](https://www.swift.org).

## Example

Basic synchronous calls to the Windows Runtime:
```swift
import WinRT

do {
  RoInitialize()

  // https://docs.microsoft.com/en-us/uwp/api/Windows.System.Profile.SystemIdentification?view=winrt-17763
  let buffer =
      Windows.System.Profile.SystemIdentification.GetSystemIdForPublisher()

  // https://docs.microsoft.com/en-us/uwp/api/Windows.Security.Cryptography.CryptographicBuffer?view=winrt-17763
  print(Windows.Security.Cryptography.CryptographicBuffer.EncodeToHexString(buffer.Id))
} catch let error {
  print(error)
}
```

Basic asynchronous call into the Windows Runtime:
```swift
import WinRT

@main
struct Asynchronous {
  public static func main() async throws {
    try RoInitialize()
    let controller =
        try Windows.System.DispatcherQueueController.CreateOnDedicatedThread()
    try await controller.ShutdownQueue()
  }
}
```

## Build Requirements

- Latest Swift **Development** Snapshot (2021-03-21 or later)<sup>[1](#snapshot-requirements)</sup>
- Windows 10
- Windows SDK 10.0.107763 or newer

<sup><a name="snapshot-requirements">1</a></sup> Stable releases are not currently supported as they are built from release branches, and this project requires the latest development snapshot from the `main` branch.<br/>

## Building

This project requires the latest Swift snapshot (March 21, 2021 or later).  You can use the snapshot binaries from
[swift.org](https://swift.org/download#snapshots) or download the nightly build
from [Azure](https://dev.azure.com/compnerd/swift-build/_build?definitionId=7).

## Debugging

Debugging for Swift/WinRT is complicated by the fact that the code is highly
intertwined with the system code, with the call stack excessively calling
between C++, C, and Swift portions.  Most issues tend to occur between the Swift
and the C/C++ aspects of the system.  This is most effectively debugged using
WinDBG.  The following will enable CodeView debug information generation for The
Swift code, enabling a better experience with WinDBG:

```cmd
swift build -Xswiftc -g -Xswiftc -debug-info-format=codeview -Xlinker -debug
```

For debugging with lldb, you can use the following command line to ensure that
the DWARF data is emitted properly:

```cmd
swift build -Xlinker -debug:dwarf
```

## About Swift/WinRT

This project is highly experimental.  It is meant to be a playground for
experimenting with both how COM interfaces are exposed as well as the Win/RT
interfaces.  It is modelled from the learnings from
[Swift/COM](https://github.com/compnerd/swift-com).

The files are split into the name of the type that they bridge, but provide only the barest amount of
sugar: mapping the `HRESULT` return value to a `Swift.Error` through the
`WinRT.Error` type.  Additionally, for the cases where it makes sense,
additional sugar is added in a separate file, which appends the `+Swift` suffix.

The long term goals are to generate the unsuffixed files, either through code
generation or through improvements to the Swift compiler's "ClangImporter".
Maturing C++ support should also provide an easier way to bridge the types
through without going through the C ABI layer.
