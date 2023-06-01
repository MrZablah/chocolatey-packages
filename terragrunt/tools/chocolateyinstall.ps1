$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'e26cb59a14104d2e2e59dd759c12cd00826c2566ef1a7b5be19f646af91f3ea7'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.46.0/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
