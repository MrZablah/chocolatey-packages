$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'b3e4487dc8f27730dee3d788aefffbc48bac060d84a95e0e2937a3a584751e14'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.55.13/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
