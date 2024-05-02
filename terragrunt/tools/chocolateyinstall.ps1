$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'ce1c46c58c770f34aa545a50e3f3b4ef863d551a6a92c28571d0446f66567522'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.57.13/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
