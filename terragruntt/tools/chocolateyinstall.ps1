$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'c9d5cff90fb8a48c49a075bda1e50ac66247085afb1028f5688e0b971ca69804'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.30.7/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
