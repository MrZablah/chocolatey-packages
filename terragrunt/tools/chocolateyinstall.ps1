$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'bcc79ad384947aeabb3a701b8f61e1a2b22f9f96f0771e3bca9cf67644241af8'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.38.11/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
