$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'd07b9aa10b7365f24335cd2e1d80a22f598aea3da5afa6dd566b3f6bd9e51e9a'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.50.16/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
