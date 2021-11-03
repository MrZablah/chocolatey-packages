$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'a912e1cca0d0568dfcc6c7999a8e46b9217b7c188c9c3d4bcb6ad6cd01026e58'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.35.6/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
