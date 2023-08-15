$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '2cd3d9c77358865d9d5df1d19abc671d9895e0de8aa26a023ad01795b1acf788'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.50.0/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
