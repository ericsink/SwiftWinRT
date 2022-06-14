#!/bin/sh
rm ./Sources/WinRT/foo/*.swift
cp ../bridge/pkg/sourcegear-bridge-Win32/C/Win32/include/Win32.h ./Sources/CWinRT/include/
cp ../bridge/pkg/sourcegear-bridge-Win32/Sources/Win32/*.swift ./Sources/WinRT/foo/

