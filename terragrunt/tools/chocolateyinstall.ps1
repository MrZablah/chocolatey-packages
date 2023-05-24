$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '4bb997f8b9da832a7ccc34778ada068b025eebfd8ec9aa21c3f7dcad3a1ed6d5'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.45.16/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
