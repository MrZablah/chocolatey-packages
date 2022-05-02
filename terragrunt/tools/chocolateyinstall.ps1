$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '8bad770a1777b7ee558443bcdffb433cc56a606872880ff05373b01590fba78b'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.36.9/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
