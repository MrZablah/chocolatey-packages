$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'fd6ec1b7795580c19813176553fd7c945aa03b61889b305fa7dd0c0359a74a52'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.44.5/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
