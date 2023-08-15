$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'ad4502fba9ee5d0b1a86d91dce183530c2dc87d6996220b13f7aa8a4c1e03223'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.49.0/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
