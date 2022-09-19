$packageName = 'terragrunt'
$fileType = "exe"
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$destination = "$toolsPath\terragrunt.exe"

Uninstall-ChocolateyPackage -PackageName $packageName -FileType $fileType -File $destination