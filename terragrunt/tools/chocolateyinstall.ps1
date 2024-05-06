$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '3f6fd3598e0f1ba3d9f3aa7e167db003d1d64937a8d36f9f2d1f2dbd28917af4'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.58.3/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
