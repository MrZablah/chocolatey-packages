$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '613569efb447303c1b3cf4ffe2b47c576050a0d886ca2d96cbe3fb228120b379'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.55.1/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
