$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '0f05798d42f43555f078d6b9d337daa4a98208c5349f99de59ebb24e0b2cdb3e'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.58.11/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
