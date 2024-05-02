$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '2e3019e818b7be8240efc173e098958ac42877abf7f2d5ec50e570a9e4e38b3e'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.57.1/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
