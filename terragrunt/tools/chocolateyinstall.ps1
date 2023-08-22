$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '122a8c5c639b8cd7f9300496172a508ec2c80fb2c7c6287b3f49ab943d3d0ec2'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.50.5/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
