$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '15070d0faddb436a3ee4945e59fed5faf12d79b1cd298efffb9dac5e3ddff731'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.55.6/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
