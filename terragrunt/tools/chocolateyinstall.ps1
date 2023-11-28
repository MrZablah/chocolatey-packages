$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'ff6a7c5d0edab8e6354f4f8d1beb49af7aca38bc081a93a1f62725ffd789653e'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.53.7/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
