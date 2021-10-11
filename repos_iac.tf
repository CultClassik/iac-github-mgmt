# iac repos - personal
module "iac_repos" {
  for_each  = local.cultclassik.repos.iac
  source    = "./modules/github_repo"
  repo_name = each.key
  repo_desc = each.value.desc
}

# iac repos - diehlabs org
module "diehlabs_iac_repos" {
  providers = {
    github = github.diehlabs
  }
  for_each  = local.diehlabs.repos.iac
  source    = "./modules/github_repo"
  repo_name = each.key
  repo_desc = each.value.desc
}

# iac repo secrets
resource "github_actions_secret" "tf_api_token" {
  for_each        = merge(local.cultclassik.repos.tf_module, local.cultclassik.repos.iac)
  repository      = each.key
  secret_name     = "TF_API_TOKEN"
  plaintext_value = var.tfe_token
}

# terraform cloud workspaces
resource "tfe_workspace" "iac_ws" {
  for_each       = local.cultclassik.repos.iac
  name           = each.key
  description    = "${each.value.desc} - Managed by Terraform"
  organization   = "Diehlabs"
  execution_mode = each.value.exec
  tag_names      = ["prod"]
}
