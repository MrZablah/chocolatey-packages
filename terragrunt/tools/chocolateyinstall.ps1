$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '09f987674a4d6ef7f5a393fbe45cf4e5e48f2d79c5002b83d0763739b760b142'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.43.3/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
