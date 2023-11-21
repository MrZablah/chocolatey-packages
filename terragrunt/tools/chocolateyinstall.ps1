$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '2bd9dc2a419783c77e1ed0fe183f341fc5dc700b78fcf443c9d73e67f2ca6300'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.53.1/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
