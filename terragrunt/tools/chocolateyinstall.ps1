$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '37fa57a355e369c01ced4a14fa7f68bd2347659a81635123e1395bd3c44c8d75'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.36.1/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
