#!/bin/sh
rm ./Sources/WinRT/sg/*.swift
cp ../bridge/pkg/sourcegear-bridge-WinRT/C/WinRT/include/Windows.h ./Sources/CWinRT/include/W.h
cp ../bridge/pkg/sourcegear-bridge-WinRT/Sources/WinRT/*.swift ./Sources/WinRT/sg/

