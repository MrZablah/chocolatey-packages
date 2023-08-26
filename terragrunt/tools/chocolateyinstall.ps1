$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '6573187ca8ffa5703fe0796b39ca0e7814042b3fb78cdc608c461b58012b4b6f'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.50.8/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
