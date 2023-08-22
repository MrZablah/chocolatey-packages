$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'b79f2d8f051dbc18a946faa165904cf7e942354a96bbda5a0aad49146ae6f327'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.50.3/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
