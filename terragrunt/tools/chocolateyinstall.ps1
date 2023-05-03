$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '401e42b384c1b712f97f35299b98746113bb9b3a95ce3a4ef8e67f8c06f32bc6'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.45.8/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
