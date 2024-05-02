$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '6d42b5c672732d1f5d8989e9143bb5868af0cf04ba3a4e4c361c4a48f5415c33'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.57.5/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
