$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'af50da05651f8dfc5938d41fecf39fe5ab70514b18533828032f73f0221b3530'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.54.16/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
