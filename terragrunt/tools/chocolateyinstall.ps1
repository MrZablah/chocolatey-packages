$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '4c03f8839d46b21e8332719dd1d2bacdfbc2113b59440835e16a512cf58ceb6e'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.51.1/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
