$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'aab2b7aed9db3224939e725d4d1d683a34e3e0343c461b70e77dad0b4a474090'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.35.12/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
