$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '54c4ccc5fdd3754a094d1e97e1fdb5fc68c9b28986a4d1f1af2097f670b6b509'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.58.1/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
