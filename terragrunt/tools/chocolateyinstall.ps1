$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'f560945aebef72e63745af5d2cf9d15476f96d51bc08938c8aab4def6e67b8ce'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.50.2/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
