$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'fc3e9a29f170f9132df035e97340593ae147dffd4ea1bcd6d8821b147567d5cb'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.35.13/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
