$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '1d95487a28e68773dd699602d2b1cfd30f19209ef0dd0b24530ec39e2685c99b'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.53.3/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
