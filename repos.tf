module "azdo_terraform_pipeline_templates" {
  source    = "./modules/github_repo"
  repo_name = "azdo-terraform-pipeline-templates"
  repo_desc = "Azure Pipelines template repo for Terraform pipelines"
}

locals {
  repos = {
    tf_module = {
      terraform-module-scaffolding   = "Base repo for a new Terraform module"
      terraform-azurerm-o365dns      = "Terraform module for creating DNS records in Azure DNS for Office 365"
      terraform-azurerm-github-repos = "Terraform module for creating Github repos"
    }
  }
}

resource "github_actions_secret" "tf_api_token" {
  for_each        = locals.repos.tf_module
  repository      = each.key
  secret_name     = "TF_API_TOKEN"
  plaintext_value = var.tfe_token
}

module "terraform_module_repos" {
  for_each  = local.repos.tf_module
  source    = "./modules/github_repo"
  repo_name = each.key
  repo_desc = each.value
}
