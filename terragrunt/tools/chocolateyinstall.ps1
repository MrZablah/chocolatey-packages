$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'ca129ff15db1da64bd1524d46da6e1259f79c2dabb0faf9a726abc39564cc154'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.57.4/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
