$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'c9b5c8481d99717dd723f203892f898c2fe527fe20f0967e8182947fc4ab75d1'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.55.14/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
