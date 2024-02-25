$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'b2c80d4aa2e1f776b2393e422eff2db6af12c25050c9f34899ca980891befe70'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.55.8/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
