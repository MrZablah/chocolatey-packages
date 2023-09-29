$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '9fd0021068726d114ec75c78e1ba1f6c05a5d2a20b38c9644a30de57b3c0fb72'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.51.6/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
