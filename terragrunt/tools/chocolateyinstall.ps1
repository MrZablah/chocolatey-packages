$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '5ccbae70aab5237af228c03c4e3b73aaec2ce4bdd0ef8d06647c2358a4d9c3e4'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.49.1/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
