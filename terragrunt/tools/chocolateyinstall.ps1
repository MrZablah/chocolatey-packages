$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '61355ed63cb40655080b86515876c143a08c6fae70e17773b460cb5fc0512b6a'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.42.7/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
