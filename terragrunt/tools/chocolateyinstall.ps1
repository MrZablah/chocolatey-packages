$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '6f721e08ca4c6af788458f528e1502dbe7be3c382bda5ab5b657a412326c28f7'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.50.13/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
