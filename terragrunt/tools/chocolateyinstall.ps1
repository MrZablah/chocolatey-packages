$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '37946ebc40abb4349db23283fb51ac02ee44e65a7c032bf95a4cb104096e7594'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.54.9/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
