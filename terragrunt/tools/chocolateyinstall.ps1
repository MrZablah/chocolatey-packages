$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'ffa8e14aa32cbbe6950543212376e6e48b14c2553772e45bd4e7d29260f86c70'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.52.2/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
