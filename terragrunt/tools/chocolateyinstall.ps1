$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '0393e83aeb99ed01eca3d09ce05019f0d1974d4e3c999aad95b05b562fb98138'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.59.3/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
