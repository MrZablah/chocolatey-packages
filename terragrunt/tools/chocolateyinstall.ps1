$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'dcc9c7d7db7848ad8b91720537d37adeb01bf1ee359fe7469d936ee94798849c'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.53.0/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
