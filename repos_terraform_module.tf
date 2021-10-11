# TF Modules
module "terraform_module_repos" {
  for_each  = local.cultclassik.repos.tf_module
  source    = "./modules/github_repo"
  repo_name = each.key
  repo_desc = each.value
}

module "diehlabs_terraform_module_repos" {
  providers = {
    github = github.diehlabs
  }
  for_each  = local.diehlabs.repos.tf_module
  source    = "./modules/github_repo"
  repo_name = each.key
  repo_desc = each.value
}
