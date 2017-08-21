# Sample-zpm
ZPM compatible version of InterSystems Sample sample.
# Installation
* Make sure you have git installed.

1. Install ZPM from : https://github.com/intersystems-community/PackageManager
2. Enter the following commands in Cache Terminal to install Sample module from github:
> zpm

> zpm: USER> repo -type git -name GitRepo -url https://github.com/intersystems-community -DRepo=Sample-zpm -path C:\gitrepos

> zpm: USER> install Sample
