$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '9977e8fcb09beede5abc6477f2cdcacbaaa76cb4859e3f7d58e7b62240c634bf'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.58.9/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
