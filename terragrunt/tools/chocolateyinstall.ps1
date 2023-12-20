$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '7f24d0c73f491a17bf17a2dbf822e14ef99549c3b1ab642d945fd205e21f2bdf'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.54.7/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
