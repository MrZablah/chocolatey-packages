$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '104f5a4afc91bdfc693a5a77774a819ed8f12e5f1f89a470343759477b93b597'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.45.4/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
