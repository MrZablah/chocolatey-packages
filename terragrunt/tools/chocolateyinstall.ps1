$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'ec12a84b9ff8918231bec897c7bbbe31523efc16f6eb5f34a6c1fd23173f1d46'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.50.17/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
