$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'fb5ba22a67f51419df7e1d30f6ab04a30405c96ad9cb0191d80415f1f8d4ef63'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.44.0/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
