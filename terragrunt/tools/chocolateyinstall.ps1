$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '853cc815c50ef2b8eb7736a376a071cc527ba5a740691f9c22d269b48038ecf5'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.36.6/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
