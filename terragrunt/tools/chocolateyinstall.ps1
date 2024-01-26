$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'a9d312b40f17d8327bf2679c66f43edee35b7b040517b90a03e9d09195609661'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.54.22/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
