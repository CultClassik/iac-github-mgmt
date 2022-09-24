module "diehlabs_iac_repos" {
  providers = {
    github = github.diehlabs
  }
  for_each   = local.diehlabs_iac
  source     = "git::https://github.com/Diehlabs/terraform-github-repo.git?ref=tags/v0.0.2"
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
