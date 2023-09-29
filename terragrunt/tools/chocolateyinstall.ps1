$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'fe09157538036687cf9d9e63292d5450a0d2af62d673dc75e85503a3385dc58d'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.51.3/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
