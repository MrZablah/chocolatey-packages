$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'dfaacbfe5bd37d8517c1c0a69704546884ec5eb990fc996c7d6c154e67c9ac33'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.51.7/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
