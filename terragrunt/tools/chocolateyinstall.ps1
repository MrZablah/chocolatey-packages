$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '432fec566bd9e2b583474b53319e4c39c3ffd96dcad5e158a0b84481eea4e83e'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.36.5/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
