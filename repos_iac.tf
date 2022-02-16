# iac repos - CultClassik
module "iac_repos" {
  for_each   = local.cultclassik_iac
  source     = "./modules/github_repo"
  repo_name  = each.key
  repo_desc  = each.value.desc
  managed_by = local.managed_by
}

# iac repos - diehlabs org
module "diehlabs_iac_repos" {
  providers = {
    github = github.diehlabs
  }
  for_each   = local.diehlabs_iac
  source     = "./modules/github_repo"
  repo_name  = each.key
  repo_desc  = each.value.desc
  managed_by = local.managed_by
}

# iac repo secrets
# resource "github_actions_secret" "tf_api_token" {
#   for_each        = local.cultclassik_iac
#   repository      = each.key
#   secret_name     = "TF_API_TOKEN"
#   plaintext_value = data.vault_generic_secret.tfe_tokens.data.owners
# }

# terraform cloud workspaces
# resource "tfe_workspace" "iac_ws" {
#   for_each       = local.cultclassik_iac
#   name           = each.key
#   description    = "${each.value.desc} - Managed by Terraform repo ${local.managed_by}"
#   organization   = "Diehlabs"
#   execution_mode = each.value.exec
#   tag_names      = ["prod"]
# }
