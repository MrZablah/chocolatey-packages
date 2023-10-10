$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '2f0f8a699ef6bf4d53756b9a24e0349a9ef35433fab2a8d882b797b4179b4c46'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.52.0/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
