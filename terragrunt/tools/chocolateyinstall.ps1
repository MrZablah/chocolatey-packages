$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '8d7613af484aa9cef8033c400bdecd47d6417205c2b12d01c13f32af04ef0ebe'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.57.7/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
