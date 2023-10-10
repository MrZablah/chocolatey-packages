$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'b9184713c23a5a176557618c16c30a716f63f5524fe59a2dac9e30d6c2beda87'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.51.9/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
