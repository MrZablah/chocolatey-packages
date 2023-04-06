$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'b3dd4469c135bf200d4a053630bf6c7049d01fed6fe989b06053490b1036ab8c'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.45.2/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
