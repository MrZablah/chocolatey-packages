$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'b1fa4d12caff5ca90cf12605716fd50089150288c3e773b245b4d83afc6fcfb4'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.58.10/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
