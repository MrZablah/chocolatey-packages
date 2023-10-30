$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '27b8d079948e694e2244de292722526f52fa6b82f7483ebff6102364dcc037c3'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.52.5/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
