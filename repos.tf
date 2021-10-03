module "azdo_terraform_pipeline_templates" {
  source    = "./modules/github_repo"
  repo_name = "azdo-terraform-pipeline-templates"
  repo_desc = "Azure Pipelines template repo for Terraform pipelines"
}

module "terraform-azurerm-o365dns" {
  source    = "./modules/github_repo"
  repo_name = "terraform-azurerm-o365dns"
  repo_desc = "Terraform module for creating DNS records in Azure DNS for Office 365"
}

module "terraform-azurerm-github-repos" {
  source    = "./modules/github_repo"
  repo_name = "erraform-azurerm-github-repos"
  repo_desc = "Terraform module for creating DNS records in Azure DNS for Office 365"
}