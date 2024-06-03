$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'f64842a1dd8ee1798b3a64e54e434bdcfba64761a5aae524f7006ec03c40524e'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.58.13/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
