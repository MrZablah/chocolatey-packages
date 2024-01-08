$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '2b9c2b789f8fb63c952e449c9d28bc6aeabd3fb977ba865175f0b0428267a29a'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.54.12/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
