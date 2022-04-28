$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '89ceaab4d1bf199ca2a78b601abef23a89c0e30164199b1c7430cf76a4317648'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.36.8/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
