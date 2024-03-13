$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '374b9e4ae5b950b2a813923c17623b864991b1e1e12a2a5ff298b1474043f3a2'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.55.11/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
