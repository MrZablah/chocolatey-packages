$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '99452c9c0a9d2240ef497171807c93f13240ba6c465b6d1d4734eb4fea671bcb'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.54.15/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
