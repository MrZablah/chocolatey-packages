$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'baee5f18e6159c48b04b9ff2fa479d064c7dba39f73da351c890cc239ebaf9c8'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.50.10/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
