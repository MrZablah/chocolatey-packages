$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'e9bb7239b09531b292fdd2065bcd962f5e5f3b4e3f361d8caaed0f68cfc65aee'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.53.2/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
