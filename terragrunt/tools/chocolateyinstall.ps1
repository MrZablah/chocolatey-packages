$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'a50bdd80ffc0ab84ead421fe832eacf2c9007f99a0964b235e8154f7e3db8892'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.38.9/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
