$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'e63cad03ef35c1761ff17db6010bda4f3caa46dd179e017e17d512c5f0f16c7f'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.58.12/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
