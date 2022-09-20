$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'f780d1bb98cab19fa21d149865eec287d8a7608cd4df3332bd72e27c42152dc7'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.38.7/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
