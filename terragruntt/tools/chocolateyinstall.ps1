$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'b1c8b9331292a2d55d7158e1052062f7dd5f12ff0bd5e36f5020a27965b6a9af'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.35.11/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
