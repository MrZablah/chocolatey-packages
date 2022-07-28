$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '70b0fa46ba50675c6fc4e74657e96908efd2371d6ea9e411eaeaf3e8c748f696'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.38.6/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
