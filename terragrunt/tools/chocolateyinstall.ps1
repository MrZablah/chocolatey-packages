$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'c68e3d35a440afd990692655ea5a260e20fa6931253b1b07b58911cf8d02ce3f'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.42.3/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
