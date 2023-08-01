$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '3fd67582fe75ced167343feab37aac3971595e1a5ea87e3faa48417a0d697e2c'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.48.5/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
