$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'e677b84a617a15f2345ab368f74629b37bf4e754f86cd6d622ec4a6e053d9d17'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.36.3/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
