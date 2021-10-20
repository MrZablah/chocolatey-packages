$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'b3032791bd06553f46ade95aba74dd0d1ac1d5c21c424559f36b66369fb07c1b'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.35.4/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
