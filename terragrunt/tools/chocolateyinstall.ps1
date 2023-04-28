$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '517ea792c223f5624907d9d41570325dae95ae7596547833194fe1ea0a9044e5'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.45.6/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
