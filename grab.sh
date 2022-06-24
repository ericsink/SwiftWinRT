#!/bin/sh
cp ../bridge/pkg/sourcegear-bridge-WinRT/C/WinRT/include/WindowsSdk.h ./WindowsSdk/Sources/CWindowsSdk/include/
cp ../bridge/pkg/sourcegear-bridge-WinRT/C/WinRT/include/WindowsApp.h ./WindowsApp/Sources/CWindowsApp/include/
cp ../bridge/pkg/sourcegear-bridge-WinRT/C/WinRT/include/Win2D.h ./Win2D/Sources/CWin2D/include/

rm ./WindowsSdk/Sources/WindowsSdk/generated/*.swift
cp ../bridge/pkg/sourcegear-bridge-WinRT/Sources/WinRT/*.swift ./WindowsSdk/Sources/WindowsSdk/generated

# TODO this is cheesy

rm ./WindowsApp/Sources/WindowsApp/generated/*.swift
mv ./WindowsSdk/Sources/WindowsSdk/generated/Microsoft.*.swift ./WindowsApp/Sources/WindowsApp/generated
mv ./WindowsSdk/Sources/WindowsSdk/generated/cg_Microsoft.*.swift ./WindowsApp/Sources/WindowsApp/generated

rm ./Win2D/Sources/Win2D/generated/*.swift
mv ./WindowsApp/Sources/WindowsApp/generated/*Graphics.Canvas* ./Win2D/Sources/Win2D/generated

