$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '06ea6fcfbbbea3c8f8fa0aadef7a084b5ab781c2eba50a4eacb9fe1889ef256d'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.52.6/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
