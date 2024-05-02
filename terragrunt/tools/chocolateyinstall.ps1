$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '49f0e7e81ac24fae65009d391e52fe30a8cabed004136cec77a8fce83cc859b4'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.56.5/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
