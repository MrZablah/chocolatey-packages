$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'f61fb94e0c9b5f598de8f183e6a16207cbacfeb0fe41d1fecb273fe85f3e0e52'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.38.4/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
