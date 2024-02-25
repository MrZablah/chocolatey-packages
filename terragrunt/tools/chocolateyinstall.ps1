$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '9f96cc61d8fa582876974cfc40d42984e001940f6450abd0f9d1bd3e56932b28'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.55.4/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
