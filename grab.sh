#!/bin/sh
cp ../bridge/pkg/sourcegear-bridge-WinRT/C/WinRT/include/WinRT.h ./WindowsSdk/Sources/CWindowsSdk/include/WindowsSdk.h
cp ../bridge/pkg/sourcegear-bridge-WinRT/C/WinRT/include/WinRT.h ./WindowsApp/Sources/CWindowsApp/include/WindowsApp.h
cp ../bridge/pkg/sourcegear-bridge-WinRT/C/WinRT/include/WinRT.h ./Win2D/Sources/CWin2D/include/Win2D.h

rm ./WindowsSdk/Sources/WindowsSdk/*.swift
cp ../bridge/pkg/sourcegear-bridge-WinRT/Sources/WinRT/*.swift ./WindowsSdk/Sources/WindowsSdk/

# TODO this is cheesy

rm ./WindowsApp/Sources/WindowsApp/*.swift
mv ./WindowsSdk/Sources/WindowsSdk/Microsoft.*.swift ./WindowsApp/Sources/WindowsApp/
mv ./WindowsSdk/Sources/WindowsSdk/cg_Microsoft.*.swift ./WindowsApp/Sources/WindowsApp/

rm ./Win2D/Sources/Win2D/*.swift
mv ./WindowsApp/Sources/WindowsApp/*Graphics.Canvas* ./Win2D/Sources/Win2D/

