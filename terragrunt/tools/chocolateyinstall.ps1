$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'e3913404e46161ebd4710ab7b6307452039d16e78233a73285eb002ce265d712'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.57.11/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
