$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '0cb60f6b25170d1f816b6534aecb13727209a1c208b20816a1d2760eb7c92f87'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.55.21/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
