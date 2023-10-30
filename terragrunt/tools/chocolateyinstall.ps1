$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'd9f092eb99f60273d82ae3e8427f0bd5b1195c8e054f69707934a459ed4ed78d'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.52.7/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
