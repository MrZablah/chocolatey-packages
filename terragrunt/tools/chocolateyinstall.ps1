$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '68c5f30312a481ee44f0399c565eb387c973aedaa4d5690d25f59da44903b64e'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.55.2/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
