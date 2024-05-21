$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '4bef0c09ab4a88cf405c4ac5efff0e6857ac6b35591726eb78556788b33c3947'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.58.7/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
