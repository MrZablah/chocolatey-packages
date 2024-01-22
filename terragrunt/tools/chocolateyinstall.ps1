$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '6b2ffbd2bc22d46cc33ffdf58e05ed51675ccb0583ae4939eeb4b2fdaeec56e5'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.54.14/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
