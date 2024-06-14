$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '87ea28d5701ab3ce087a08dc9df2840fdd1e23f648c23cbe885c20f64e9ab49c'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.59.1/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
