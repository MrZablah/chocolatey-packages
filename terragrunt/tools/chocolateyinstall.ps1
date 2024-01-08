$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '17a5afe6133edb8d62a25cf415a41c2a5de053db9f2ec623e20cca731060e80c'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.54.11/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
