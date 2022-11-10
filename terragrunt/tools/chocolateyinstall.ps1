$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'e320f9a2092bec4103726de3c9b17aeda4aa0b5246f5b7a312b3e049015449e5'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.40.1/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
