provider "github" {
  #token = var.github_token
}

data "terraform_remote_state" "tfcloud" {
  backend = "remote"
  config = {
    organization = "Diehlabs"
    workspaces = {
      name = "tfcloud-mgmt"
    }
  }
}

resource "github_user_ssh_key" "ssh_key_cultclassik" {
  title = "cultclassik"
  key   = data.terraform_remote_state.tfcloud.outputs.ssh_key_cultclassik.public_key_openssh
}

module "iac_github_mgmt" {
  source    = "./modules/github_repo"
  repo_name = "iac-github-mgmt"
  repo_desc = "Manages Github resources"
}

# iac repo secrets
resource "github_actions_secret" "iac_github_mgmt_tftoken" {
  repository      = module.iac_github_mgmt.repo_name
  secret_name     = "TF_API_TOKEN"
  plaintext_value = var.tfe_token
}

# terraform import tfe_workspace.iac_github_mgmt ws-MyypkggTqKQ9xbSY
resource "tfe_workspace" "iac_github_mgmt" {
  name           = module.iac_github_mgmt.repo_name
  organization   = "Diehlabs"
  tag_names      = ["test", "app"]
  execution_mode = "local"
}