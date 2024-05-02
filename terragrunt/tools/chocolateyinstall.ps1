$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '86b6a7a4ac50139be06e861318186e0b0d9fb6df969a3cd4ec959ab836c8ef0b'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.58.0/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
