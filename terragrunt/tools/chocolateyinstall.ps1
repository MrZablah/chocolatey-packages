$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '29bf6de4a0348c2ba0d502ec82d6bd2724fa2a2fab28318309c074feade01b5f'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.55.9/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
