$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '53c6560ea9bd13b943f78d4ef684a02bc4d61434cd37bbe808ec47b174652884'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.57.8/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
