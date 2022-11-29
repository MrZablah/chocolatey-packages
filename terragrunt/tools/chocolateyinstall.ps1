$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '4248317f2ac9d8352734643995f81d3f1b15dea49040c5dc391d7170a2188e5c'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.42.2/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
