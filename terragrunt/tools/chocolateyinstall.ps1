$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '73440a470076305335dae0d17d3bdaaec0b2eb0d7748c895a4fa5f07c52eaca7'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.45.0/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
