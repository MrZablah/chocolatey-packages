$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '97de82afe45370edf1a582e4599ce88ff567269f9f5e49dfd40e519ad009bd79'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.58.14/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
