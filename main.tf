provider "github" {
  token = data.terraform_remote_state.tfcloud.outputs.github_token
  #owner = "Diehlabs"
}

provider "github" {
  alias = "diehlabs"
  owner = "Diehlabs"
  token = data.terraform_remote_state.tfcloud.outputs.github_token
}

provider "tfe" {
  token = var.tfe_token
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

###############
# THIS REPO > #
###############
module "iac_github_mgmt" {
  source    = "./modules/github_repo"
  repo_name = "iac-github-mgmt"
  repo_desc = "Manages Github resources"
}

resource "github_actions_secret" "iac_github_mgmt_tftoken" {
  repository      = module.iac_github_mgmt.repo_name
  secret_name     = "TF_API_TOKEN"
  plaintext_value = var.tfe_token
}

resource "tfe_workspace" "iac_github_mgmt" {
  name           = module.iac_github_mgmt.repo_name
  organization   = "Diehlabs"
  tag_names      = ["production", "github"]
  execution_mode = "local"
}
###############
# < THIS REPO #
###############

# shared and template workflows
module "github_action_templates" {
  providers = {
    github = github.diehlabs
  }
  source    = "./modules/github_repo"
  repo_name = ".github"
  repo_desc = "Github Workflow Templates"
}
