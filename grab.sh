#!/bin/sh
cp ../bridge/pkg/sourcegear-bridge-WinRT/C/WinRT/include/WinRT.h ./WindowsSdk/Sources/CWindowsSdk/include/WindowsSdk.h
cp ../bridge/pkg/sourcegear-bridge-WinRT/C/WinRT/include/WinRT.h ./WindowsApp/Sources/CWindowsApp/include/WindowsApp.h
cp ../bridge/pkg/sourcegear-bridge-WinRT/C/WinRT/include/WinRT.h ./Win2D/Sources/CWin2D/include/Win2D.h

rm ./WindowsSdk/Sources/WindowsSdk/generated/*.swift
cp ../bridge/pkg/sourcegear-bridge-WinRT/Sources/WinRT/*.swift ./WindowsSdk/Sources/WindowsSdk/generated

# TODO this is cheesy

rm ./WindowsApp/Sources/WindowsApp/generated/*.swift
mv ./WindowsSdk/Sources/WindowsSdk/generated/Microsoft.*.swift ./WindowsApp/Sources/WindowsApp/generated
mv ./WindowsSdk/Sources/WindowsSdk/generated/cg_Microsoft.*.swift ./WindowsApp/Sources/WindowsApp/generated

rm ./Win2D/Sources/Win2D/generated/*.swift
mv ./WindowsApp/Sources/WindowsApp/generated/*Graphics.Canvas* ./Win2D/Sources/Win2D/generated

