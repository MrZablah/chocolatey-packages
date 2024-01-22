$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '084484803f10e58e37ee8ffbe58b61b3b3ee714f50b21bb9888707fd0a33f52a'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.54.13/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
