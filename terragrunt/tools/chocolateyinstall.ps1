$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '922d3881ad7b0cc9968644220dc18b3e3549e5a7576ccfe8e0660b6a10060a3a'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.54.21/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
