$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '9e0a04f73652025d004719daf28d11069bc7a972956b2cd2d2e2f8a05565cb7f'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.35.14/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
