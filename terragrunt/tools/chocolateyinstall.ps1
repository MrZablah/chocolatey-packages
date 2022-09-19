$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '81466819216d9954b17c6b411e2de363f84546e755938c61a4b5cf2beae8d639'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.38.12/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Install-ChocolateyPackage -PackageName $packageName -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256 -UnzipLocation $destination
