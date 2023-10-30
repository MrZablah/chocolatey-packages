$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '99a1ae467b228927c77f2a2f5dd843aecdb84b732d8c36e1dc45f5f9500914b5'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.52.3/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
