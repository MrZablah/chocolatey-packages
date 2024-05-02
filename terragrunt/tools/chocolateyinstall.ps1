$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'cb521d5ccfb4a7f062abad9ec46f9cf7ab1aad9dc8e82456efe9cf98a2e2e3db'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.57.12/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
