$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '497f5c302acf87f313cd09b0413028b8cd129e21938d482ff58dd99ba13f2d75'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.39.1/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
