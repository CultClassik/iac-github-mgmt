locals {
  repos = {
    tf_module = {
      terraform-module-scaffolding   = "Base repo for a new Terraform module"
      terraform-azurerm-o365dns      = "Terraform module for creating DNS records in Azure DNS for Office 365"
      terraform-azurerm-github-repos = "Terraform module for creating Github repos"
    }
    misc_projects = {
        iac-tkg = "Scripts etc for TKG"
    }
  }
}