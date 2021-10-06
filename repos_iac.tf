# iac repos
module "iac_repos" {
  for_each  = local.repos.iac
  source    = "./modules/github_repo"
  repo_name = each.key
  repo_desc = each.value
}

# iac repo secrets
resource "github_actions_secret" "tf_api_token" {
  for_each        = merge(local.repos.tf_module, local.repos.iac)
  repository      = each.key
  secret_name     = "TF_API_TOKEN"
  plaintext_value = var.tfe_token
}

# terraform cloud workspaces
resource "tfe_workspace" "iac_ws" {
  for_each       = local.repos.iac
  name           = each.key
  description    = "${each.value} - Managed by Terraform"
  organization   = "Diehlabs"
  execution_mode = "local"
  tag_names      = ["prod"]
}