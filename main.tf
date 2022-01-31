provider "github" {
  token = data.vault_generic_secret.github_token.data.token
}

provider "github" {
  alias = "diehlabs"
  owner = "Diehlabs"
  token = data.vault_generic_secret.github_token.data.token
}

provider "tfe" {
  token = data.vault_generic_secret.tfe_tokens.data.owners
}

###############
# THIS REPO  (when it was located in github)> #
# repo moved to azdo, resources removed from state, github repo has been archived
###############
# module "iac_github_mgmt" {
#   source     = "./modules/github_repo"
#   repo_name  = "iac-github-mgmt"
#   repo_desc  = "Manages Github resources"
#   managed_by = "${var.repo_name} (azdo)"
# }

# resource "github_actions_secret" "iac_github_mgmt_tftoken" {
#   repository      = "iac-github-mgmt"
#   secret_name     = "TF_API_TOKEN"
#   plaintext_value = data.vault_generic_secret.tfe_tokens.data.owners
# }

# This resource now managed in terraform-github-mgmt in azure devops repos
# resource "tfe_workspace" "iac_github_mgmt" {
#   name           = "iac-github-mgmt"
#   organization   = "Diehlabs"
#   tag_names      = ["production", "github"]
#   execution_mode = "local"
# }
###############
# < THIS REPO #
###############

# shared and template workflows
module "github_action_templates" {
  providers = {
    github = github.diehlabs
  }
  source     = "./modules/github_repo"
  repo_name  = ".github"
  repo_desc  = "Github Workflow Templates"
  managed_by = "${var.repo_name} (azdo)"
}
