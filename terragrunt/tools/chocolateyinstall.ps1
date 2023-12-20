$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '37ef49d79c6ce3554f3c72d2991eb61e271436837b7614f4d623b7af1e6f8a5b'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.54.4/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
