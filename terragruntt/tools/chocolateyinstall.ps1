$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '003d8db54d190759c5f710dec89cf956aebf0b6124a66f68c32461463c8e7c81'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.35.16/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
