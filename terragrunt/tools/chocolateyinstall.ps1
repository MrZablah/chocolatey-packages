$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '14c88750bf7f9c7e3a3f17b75502a18646d5ca8cd7322aa60812ffd3f2260df3'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.55.0/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
