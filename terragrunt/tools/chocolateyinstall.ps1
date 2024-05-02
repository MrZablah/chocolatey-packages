$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '1cae4c0aa6fb2c8442d3a6932fde70af647defa37e922b61e3d5e0fb9238ab21'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.56.3/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
