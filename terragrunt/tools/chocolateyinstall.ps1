$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '3d64584124eb1c7e078bbcbca0cae71f7e42412a227b750dfeaa207bd9607cc7'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.53.4/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
