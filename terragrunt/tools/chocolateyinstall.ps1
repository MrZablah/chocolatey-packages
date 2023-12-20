$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '9ce736dad256ba0caea031c98804bad4cfd3b22d403bbbf8552886fb88dd11af'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.54.8/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
