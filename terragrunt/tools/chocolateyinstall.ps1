$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'acbe473b9770c1a7e318afa391ebecddf2fe920e8984b2e9215c26b131d107d4'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.51.5/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
