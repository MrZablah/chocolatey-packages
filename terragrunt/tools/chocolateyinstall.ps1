$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '7f143f0efc238f95391f205dd1b59e48450c7e96fdda6c335f21767b76e88ea0'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.50.1/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
