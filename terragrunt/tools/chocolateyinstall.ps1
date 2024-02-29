$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '8d8ef419cca41db2aaa5bd6e499acc2715af1cae55b21a99f5da843b1abd400a'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.55.10/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
