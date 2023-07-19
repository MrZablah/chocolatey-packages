$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '9fd0643771a7787420029c826aa87864731ac1f28104ea96a5f23808a87b1c3f'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.48.4/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
