$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'ea2f93e070649c4cb52311f9f1b3e553dec851ef35a0ea18234e24cb80348bdc'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.51.2/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
