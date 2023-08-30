$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'd844475aad77a7185f4dfe7057ced78ab81dab7bc69c40e455f37fbcdedb9427'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.50.9/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
