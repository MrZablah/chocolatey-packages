$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = 'acf93ebdc5c4edfdd6c1ace71588c20d6bbb67271a152b573920f172cd953aa5'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.52.1/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
