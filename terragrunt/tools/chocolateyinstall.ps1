$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '24efb3fddafc897362d13cb054c138f2fd7948d6fd21008fdb314b66ca21399b'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.58.6/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
