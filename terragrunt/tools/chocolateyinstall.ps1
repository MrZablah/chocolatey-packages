$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '53aecadc0719b036dba25643dcf4c33409c0aad9e8c11effbe0b37286ba5fad8'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.55.12/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
