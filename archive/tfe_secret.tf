# iac repo secrets
# resource "github_actions_secret" "tf_api_token" {
#   for_each        = local.cultclassik_iac
#   repository      = each.key
#   secret_name     = "TF_API_TOKEN"
#   plaintext_value = data.vault_generic_secret.tfe_tokens.data.owners
# }
