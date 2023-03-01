$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '0640ffdab8861c6f8bb93043cb82a58a9c28a474c4c366185698c47a2ded9ea3'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.44.1/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
