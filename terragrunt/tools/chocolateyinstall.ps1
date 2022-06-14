$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '2eabb0b92cb9dedcd695d57d84cc8caceca0e1a555fb8dd00a005efed8c48d75'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.37.4/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
