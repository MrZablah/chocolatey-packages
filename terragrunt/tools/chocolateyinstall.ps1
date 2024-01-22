$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'b41e87bb43105a504832a26461ed867272aa73b82a2b8fdecdfb77468655ae86'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.54.17/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
