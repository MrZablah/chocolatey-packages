$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '88b49bb202b8057eb05d23e6d6b0b9c85c80a327a3805d1c054dbd40450970b6'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.57.9/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
