$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '163dd4f923937d1e08bdc5bc007c76a70abe051c8da9865a82893ec03200e916'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.38.5/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
