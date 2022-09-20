$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '0df54857445c8593d3827a9713ee3ffb92cefc10f913156a7d69d7834fdf2574'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.38.8/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
