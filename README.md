# Chocolatey Packages
This package is base on [DrFaust92](https://github.com/DrFaust92/chocolatey-packages).

[Chocolatey](https://chocolatey.org/) Package sources for the following tools:

* [terragrunt](https://github.com/gruntwork-io/terragrunt)
* ~~[terraform-docs](https://github.com/terraform-docs/terraform-docs)~~
* ~~[tfsec](https://github.com/tfsec/tfsec)~~


## Terragrunt
The current version is 0.28.7, install it using choco:
```
choco install terragrunt
```

# Calculating SHA256

Calculating SHA256 for packages where not applicable
```batch
certUtil -hashfile pathToFileToCheck SHA256
```
