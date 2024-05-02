$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '32e37a156b46066ef0e47b7d9aae0dfa53550074fc08e6291d78507060f94b50'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.57.2/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
