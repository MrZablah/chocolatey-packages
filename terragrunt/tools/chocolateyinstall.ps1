$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '1bd5052587ba4a76e75eeee726834a0d2ed3a4319ece0b3d20d7bc959642f5bf'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.44.4/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
