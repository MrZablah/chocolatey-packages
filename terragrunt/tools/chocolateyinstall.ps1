$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'c6e68f640915be2c67aaf2f0aa7a30574bc0eb247b219723b544d2eeab3565b5'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.55.16/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
