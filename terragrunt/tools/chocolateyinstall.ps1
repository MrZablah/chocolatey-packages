$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '5ab5f0a0dc8f1061702de3127809cf4b9a6bc4b19c29b0787464fdb86b3b4113'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.42.4/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
