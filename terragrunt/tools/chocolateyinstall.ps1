$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '619f0a65e5a57f812d8a079d391ab42375a33c32fcdfbe431366dc557fc8473c'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.40.0/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
