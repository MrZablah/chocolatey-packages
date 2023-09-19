$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '00d13bd3297696a2ac3fcd8930975440ada5ad3dc4a05deb1080b5a796006911'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.50.15/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
