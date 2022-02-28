data "vault_generic_secret" "spn_terraform" {
  path = "diehlabs/azure/spn_terraform"
}

resource "github_actions_organization_secret" "gh_arm_client_id" {
  provider        = github.diehlabs
  visibility      = "all"
  secret_name     = "ARM_CLIENT_ID"
  plaintext_value = data.vault_generic_secret.spn_terraform.data["ARM_CLIENT_ID"]
}

resource "github_actions_organization_secret" "gh_arm_client_secret" {
  provider        = github.diehlabs
  visibility      = "all"
  secret_name     = "ARM_CLIENT_SECRET"
  plaintext_value = data.vault_generic_secret.spn_terraform.data["ARM_CLIENT_SECRET"]
}

resource "github_actions_organization_secret" "gh_arm_tenant_id" {
  provider        = github.diehlabs
  visibility      = "all"
  secret_name     = "ARM_TENANT_ID"
  plaintext_value = data.vault_generic_secret.spn_terraform.data["ARM_TENANT_ID"]
}

resource "github_actions_organization_secret" "gh_arm_sub_id" {
  provider        = github.diehlabs
  visibility      = "all"
  secret_name     = "ARM_SUBSCRIPTION_ID"
  plaintext_value = data.vault_generic_secret.spn_terraform.data["ARM_SUBSCRIPTION_ID"]
}
