$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '0b6e7fe11fa5257b549f0c8810c14bc56e3be3a5f8df4842328671f7f4ecf090'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.50.6/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
