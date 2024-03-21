$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '29faf79e99f0d83602dc2cb1f8e2dc1fd1d65163b25bef16b2036fbd689eac19'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.55.17/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
