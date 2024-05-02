$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'c1cbf57675d4a61c73ee2b549a77fb83f58f73886fda5c1e4dae213e3f1742cb'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.56.0/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
