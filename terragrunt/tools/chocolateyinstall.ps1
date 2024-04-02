$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '1f14c216ec547390690c93962045dbe7ee507734ff51d9965d0d43c6ca729af1'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.55.19/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
