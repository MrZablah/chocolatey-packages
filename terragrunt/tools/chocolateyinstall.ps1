$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'e44ab5f7e06fd30573890ce20b43a5ddc5c33c3fe900d2defd8393f11d4c90b0'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.58.4/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
