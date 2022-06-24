
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

- WindowsApp contains automatically generated bindings
for a bunch of WinRT things in the Windows App SDK.

- Win2D contains automatically generated bindings
for Win2D.

- Samples contains several sample apps.

----

None of the generated bindings are complete.  Generally
speaking, I can generate bindings for any of the
WinRT types in Windows SDK, Windows App SDK, or Win2D,
and the resulting Swift code will compile.  However,
the size of the result is so large it causes the Windows
linker to fail because of the 65,536 symbols limit.
I'm still investigating ways around this.

The two original samples are still here and have been
modified a little bit to build with the new bindings.

A new toast notification sample has been added.

The most complete sample is MazeGame, a Swift port
of the Win2DMazeGame sample from Microsoft.  It
uses WinUI3 for a simple GUI shell and Win2D for
the game itself.

I'm using Swift 5.6.1, and I have not tested with
any other version.

