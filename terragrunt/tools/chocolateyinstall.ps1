$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '5cb67e568c768e4a576720dbb9b652e6c2ad5122e81753258f32bb78a3a80ba4'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.58.5/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
