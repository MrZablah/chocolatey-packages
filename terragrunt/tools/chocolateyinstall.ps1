$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'edd8edc075c9bf257672a56af5d93a1c3aa971ae02b21b4f2301fde1e615e101'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.48.1/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
