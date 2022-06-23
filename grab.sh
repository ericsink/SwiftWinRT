#!/bin/sh
rm ./WindowsApp/Sources/WindowsApp/*.swift
cp ../bridge/pkg/sourcegear-bridge-WinRT/C/WinRT/include/WinRT.h ./WindowsApp/Sources/CWindowsApp/include/WindowsApp.h
cp ../bridge/pkg/sourcegear-bridge-WinRT/Sources/WinRT/*.swift ./WindowsApp/Sources/WindowsApp/
# TODO this is cheesy
# TODO should grab the header for Win2D too
rm ./Win2D/Sources/Win2D/*.swift
mv ./WindowsApp/Sources/WindowsApp/*Graphics.Canvas* ./Win2D/Sources/Win2D/

