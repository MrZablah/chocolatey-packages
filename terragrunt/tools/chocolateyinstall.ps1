$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '1b5d21b011ba0ebcd7dbfc7116dfbeceb6449c5bb8fb9e9c6e45b2e2dd21183b'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.53.8/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
