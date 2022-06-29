#!/bin/sh
cd ./appx
powershell -command "Get-AppxPackage *942b16b2-c2af-4092-ba34-e4f0c2df308b* | Remove-AppxPackage"
powershell -command "Add-AppxPackage -ExternalLocation c:/Users/eric/dev/SwiftWinRT/Samples/.build/debug/ -Register AppxManifest.xml"
cd ..

