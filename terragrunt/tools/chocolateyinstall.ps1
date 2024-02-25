$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '312323154ec0b1ba7890e8505b6114555f7838208718f4e6d2d7a96167c40821'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.55.7/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
