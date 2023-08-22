$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '12b6eeebae05cd4bb328e12bcc3e59e665755488ecf7fdd4fcbad3a05b2aa1b1'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.50.4/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
