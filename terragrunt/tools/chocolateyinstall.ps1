$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '2bcb153b64a30578ccf490f5921ee227ca32a1fe2da46496c776cd6f31c9dea8'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.42.5/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
