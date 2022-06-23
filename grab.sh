#!/bin/sh
rm ./WindowsApp/Sources/WindowsApp/*.swift
cp ../bridge/pkg/sourcegear-bridge-WinRT/C/WinRT/include/WinRT.h ./WindowsApp/Sources/CWindowsApp/include/WindowsApp.h
cp ../bridge/pkg/sourcegear-bridge-WinRT/Sources/WinRT/*.swift ./WindowsApp/Sources/WindowsApp/

