$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '980dbaa7faac150d7abca053dbbf7025cc2951e72d656d5a6f2fe7ea3307ff65'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.39.2/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
