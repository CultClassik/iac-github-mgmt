provider "github" {
  token = var.gh_token
}

provider "github" {
  alias = "diehlabs"
  owner = "Diehlabs"
  token = var.gh_token
}

provider "tfe" {
  token = var.tf_token
}

###############
# THIS REPO  (when it was located in github)> #
# repo moved to azdo, resources removed from state, github repo has been archived
###############
module "iac_github_mgmt" {
  source     = "git::https://github.com/Diehlabs/terraform-github-repo.git?ref=tags/v0.0.2"
  repo_name  = "iac-github-mgmt"
  repo_desc  = "Manages Github resources"
  managed_by = local.managed_by
}

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

# starter workflow repo
module "github_action_templates" {
  providers = {
    github = github.diehlabs
  }
  source     = "git::https://github.com/Diehlabs/terraform-github-repo.git?ref=tags/v0.0.2"
  repo_name  = ".github"
  repo_desc  = "Github Workflow Templates"
  managed_by = local.managed_by
}

# shared workflows repo
module "github_workflow_templates" {
  providers = {
    github = github.diehlabs
  }
  source     = "git::https://github.com/Diehlabs/terraform-github-repo.git?ref=tags/v0.0.2"
  repo_name  = "shared-workflows"
  repo_desc  = "Github Workflow Templates"
  managed_by = local.managed_by
}
