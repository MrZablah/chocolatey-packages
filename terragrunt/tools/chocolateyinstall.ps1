$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'b57240a03d9664d3b4fed249972ee83c18d9160d8acd0697b7767649fed31109'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.54.10/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
