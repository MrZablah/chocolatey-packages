$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '1d32da37b47af8e8af1b9d3f7f42b4f613890e2fb326e494fe734b19b102f14d'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.55.5/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
