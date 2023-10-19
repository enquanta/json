#! /usr/bin/pwsh

if (Test-Path -Path .\build) {
    Remove-Item -Path .\build -Recurse -Force
}

New-Item -Path .\build -ItemType Directory

Set-Location -Path .\build\

cmake ..

& "C:/Program Files/Microsoft Visual Studio/2022/Community/MSBuild/Current/Bin/msbuild.exe" nlohmann_json.sln -target:Clean

& "C:/Program Files/Microsoft Visual Studio/2022/Community/MSBuild/Current/Bin/msbuild.exe" nlohmann_json.sln

Set-Location ..\