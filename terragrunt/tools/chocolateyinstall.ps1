$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '9d4ad7038c5a59c81350260031af12386b011e11fea3f0649e9ccf4aa481a3c7'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.54.6/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
