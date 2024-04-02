$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '5635ddc2cb5a993b111daa30769a7d62f9f8cceed44485ba43c176586477dbab'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.55.20/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
