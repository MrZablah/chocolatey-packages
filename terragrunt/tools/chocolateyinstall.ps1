$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '1b9603febf14f76f3386933cb3cfe04be8dd7759925d29650a5920ba53fdbfd0'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.48.7/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
