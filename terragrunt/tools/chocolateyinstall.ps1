$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '22923a4e74c188672e95658b7c84a6117c1655c0859f80b072da63335b1cf3ce'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.38.10/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
