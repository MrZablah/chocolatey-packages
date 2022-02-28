$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'ecf7d5b573ec7e5df8b930a40c78779f80c0d07c6fb4dfa736d11935c3802dfb'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.36.2/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
