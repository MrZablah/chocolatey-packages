$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'a2bf5ba9e54f99705eaec2d1d1257bfbd0e7b241d21d4924f040aeb993502fec'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.37.1/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
