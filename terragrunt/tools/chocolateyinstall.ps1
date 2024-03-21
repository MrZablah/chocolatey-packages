$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '36990c178e8f23182b350f48e3ee3888652bae558d02376afcaa66d1f5926e00'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.55.15/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
