$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'bb96613209a58a00b18f9a70264c58cf7365200088c870e079fdff7b6f87d7d2'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.50.11/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
