$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '28dfc5eff8c9f9a99ddc6bb5a708d0ce875b0e6bac5cb9f0ff21d6238a91cf34'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.50.12/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
