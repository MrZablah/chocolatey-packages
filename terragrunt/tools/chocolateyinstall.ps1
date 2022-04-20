$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '5997bf44aa3eef4cf4e1543b0f1df3d47a9710b40521c078ee7f84fd47753db1'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.36.7/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
