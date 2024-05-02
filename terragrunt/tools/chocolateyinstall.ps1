$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '78af0b659cb5d361d62eec424ba054e7160f5b0e25be6613c0312a0189f2e68c'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.57.3/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
