$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '95f5e800551fbe950b200e34ddec89583796e913c4b3e22e768343c3744b3e6f'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.58.8/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
