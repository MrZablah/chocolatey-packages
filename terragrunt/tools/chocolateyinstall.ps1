$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '34b036dcef748e15dd97bdccd96df98ef7880aa6da88f3e24622792705906bd4'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.48.0/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
