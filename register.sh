#!/bin/sh
cp ./.build/debug/CoreApp.exe ./appx/DemoApp.exe
#cp ./.build/debug/Microsoft.WindowsAppRuntime.Bootstrap.dll ./appx/
cd ./appx
powershell -command "Get-AppxPackage *942b16b2-c2af-4092-ba34-e4f0c2df308b* | Remove-AppxPackage"
powershell -command "Add-AppxPackage -Register AppxManifest.xml"
cd ..
