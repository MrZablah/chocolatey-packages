$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'a699d2754aaa91f6977724cf4366b71334d49a58f53ac2da175f0e4fcff6e58a'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.36.0/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
