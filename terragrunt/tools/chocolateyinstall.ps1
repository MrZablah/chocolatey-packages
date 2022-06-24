$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'eb7ce0b2cdb8e8f7b497e676f64eec27df8d1045218457e9f46060f1a7b11c31'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.38.1/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
