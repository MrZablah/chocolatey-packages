$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '66dedbcfaa9e7036c688beef5b8b5eedffb2d1a7f4301d65036d8f997e277b85'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.54.5/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
