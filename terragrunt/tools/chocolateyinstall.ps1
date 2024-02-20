$ErrorActionPreference = 'Stop'

$packageName = 'terragrunt'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$checksum = '68cdda6337dc7373cbc76adbc4144e788a13fb01f92474a945cac9ca5f1bf709'
$url = 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.55.3/terragrunt_windows_amd64.exe'
$destination = "$toolsPath\terragrunt.exe"

Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $destination -Url64bit $url -Checksum64 $checksum -ChecksumType64 sha256
