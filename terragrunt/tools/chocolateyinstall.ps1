$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'e773adfd18de821026e2cae776b6b1bfba67f45160fc682f9e41e679dc7c25d4'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.43.0/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
