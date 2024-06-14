$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '848b593ad2f89cd21e7051cef9ee9436de10a9146903152090cf95ddcc4e568d'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.58.15/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
