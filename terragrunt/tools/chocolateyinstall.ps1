$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '1cdf1c828a760083e4cc51b51907c572a41a9035f4b847d96cb6fb5227a8adc8'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.45.3/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
