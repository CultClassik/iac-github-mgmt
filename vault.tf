data "terraform_remote_state" "vault_mgmt" {
  backend = "remote"
  config = {
    organization = "Diehlabs"
    workspaces = {
      name = "terraform-vault-mgmt"
    }
  }
}

provider "vault" {
  address = "https://hcv.diehlabs.com"
  auth_login {
    path = "auth/approle/login"
    parameters = {
      role_id   = data.terraform_remote_state.vault_mgmt.outputs.approles.diehlabs-read-role.id
      secret_id = data.terraform_remote_state.vault_mgmt.outputs.approles.diehlabs-read-role.secret
    }
  }
}

data "vault_generic_secret" "github_token" {
  path = "diehlabs/github"
}

data "vault_generic_secret" "tfe_tokens" {
  path = "diehlabs/terraform/tokens"
}

data "vault_generic_secret" "ssh" {
  path = "diehlabs/ssh/keys/cultclassik"
}
