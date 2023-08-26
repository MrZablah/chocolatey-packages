$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'b3456fd3bb94165694fd9a18003ef068c3055405214c412f4f0b81c333d9f08f'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.50.7/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
