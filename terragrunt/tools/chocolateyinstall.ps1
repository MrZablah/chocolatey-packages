$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'e12d53fd458b16e43701e684ccd6f593500fc967c36de35d3dab24e1ef9e1c6c'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.46.3/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
