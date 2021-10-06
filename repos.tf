# azure pipelines templates for terraform
module "azdo_terraform_pipeline_templates" {
  source    = "./modules/github_repo"
  repo_name = "azdo-terraform-pipeline-templates"
  repo_desc = "Azure Pipelines template repo for Terraform pipelines"
}

# TF Modules
module "terraform_module_repos" {
  for_each  = local.repos.tf_module
  source    = "./modules/github_repo"
  repo_name = each.key
  repo_desc = each.value
}

# iac repos
module "iac_repos" {
  for_each  = local.repos.iac
  source    = "./modules/github_repo"
  repo_name = each.key
  repo_desc = each.value
}

# iac and tf module repo secrets
resource "github_actions_secret" "tf_api_token" {
  for_each        = merge(local.repos.tf_module, local.repos.iac)
  repository      = each.key
  secret_name     = "TF_API_TOKEN"
  plaintext_value = var.tfe_token
}

# iac repo workspaces
resource "tfe_workspace" "iac_repos" {
  for_each       = local.repos.iac
  name           = each.key
  description    = each.value
  organization   = "Diehlabs"
  tag_names      = ["prod"]
  execution_mode = "local"
}

# Misc projects
module "misc_project_repos" {
  for_each  = local.repos.misc_projects
  source    = "./modules/github_repo"
  repo_name = each.key
  repo_desc = each.value
}