module "azdo_terraform_pipeline_templates" {
  source    = "./modules/github_repo"
  repo_name = "azdo-terraform-pipeline-templates"
  repo_desc = "Azure Pipelines template repo for Terraform pipelines"
}

# TF Modules
resource "github_actions_secret" "tf_api_token" {
  for_each        = local.repos.tf_module
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

# Misc projects
module "misc_project_repos" {
  for_each  = local.repos.misc_projects
  source    = "./modules/github_repo"
  repo_name = each.key
  repo_desc = each.value
}