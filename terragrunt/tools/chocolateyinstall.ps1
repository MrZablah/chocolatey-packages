$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '5d68a877b2bb8b2521c1ffdf3d1b41a3ef00c2d4746fbd028d99a400ce453c74'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.45.18/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
