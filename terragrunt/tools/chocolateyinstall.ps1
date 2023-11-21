$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'f78d16d5cc37ee7413ffa2947200335ba8d89742847692c877d7853c4cc05980'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.53.5/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
