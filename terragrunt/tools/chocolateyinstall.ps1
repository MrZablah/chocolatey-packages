$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '8194819ebb42214f828694b197a090424695a10397d7f42d0a95c9ef182eb1f5'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.54.19/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
