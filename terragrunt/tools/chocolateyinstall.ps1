$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'ef3fd47d269c5297e7d4c0b9342caef62947c1939672a30c9acfe09599d846ec'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.54.0/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
