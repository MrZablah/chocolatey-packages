$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'f85d8b462b947cc0b022a43856b36c28ad802883a09b52594b2feb8af5c42050'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.51.8/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
