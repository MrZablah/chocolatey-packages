$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '61856408c4694251a53dce42d5f7e3d57dc5920541b5330f36f087a0c1be2578'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.56.1/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
