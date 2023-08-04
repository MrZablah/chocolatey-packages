$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '68f214977f837c51cf313bfd59eeb8667d12637e0fa3decce05a9803ab8cfba8'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.48.6/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
