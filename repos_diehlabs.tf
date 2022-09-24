# -----------------------------------------------------------------------------
# Module call to manage CultClassik repos
# -----------------------------------------------------------------------------
module "diehlabs_repos" {
  providers = {
    github = github.diehlabs
  }
  source     = "./modules/github-repo"
  managed_by = local.managed_by_repo
  repos = merge(
    local.repos_diehlabs,
    {},
  )
}

# -----------------------------------------------------------------------------
# Data used to manage CultClassik repos
# -----------------------------------------------------------------------------
locals {
  repos_diehlabs = {
    repo_0001 = {
      name = "pre-commit-hooks"
      desc = "Shared pre-commit hooks"
    }
    repo_0002 = {
      name = "terrahelpers"
      desc = "Go package for Terratest helper functions"
    }
    repo_0003 = {
      name = "go-builder"
      desc = "Go container for building Go projects and more"
    }
  }

}
