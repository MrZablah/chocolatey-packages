$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'f1ffa3939740aab5378e50086fbe1d6c96782ad3cfc07d5efeed0eb525d4666d'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.43.2/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
