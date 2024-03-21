$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '25a6bc1fe02ef97725b61204459db53acc55928b51255fb14c449e6575c676bb'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.55.18/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
