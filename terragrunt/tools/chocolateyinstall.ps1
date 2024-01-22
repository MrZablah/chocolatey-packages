$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '7c08675703884eea4e248e2286f869c55574ac403de6fdfd9705a7139b8e0d14'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.54.20/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
