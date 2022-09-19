$packageName = 'terragrunt'
$fileType = "exe"
$destination = "$toolsPath\terragrunt.exe"

Uninstall-ChocolateyPackage -PackageName $packageName -FileType $fileType -File $destination