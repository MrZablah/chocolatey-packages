$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '736a0758e9dbb9d6a5ff8354611660f01d37e399220b3ccac567d0a6835e9bc2'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.43.1/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
