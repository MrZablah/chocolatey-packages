$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '87d9381066969ed4eb473f82dd5805cadb169a6319bd036c1bb212d6d0dfe9bf'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.54.2/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
