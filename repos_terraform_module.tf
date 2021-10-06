# TF Modules
module "terraform_module_repos" {
  for_each  = local.repos.tf_module
  source    = "./modules/github_repo"
  repo_name = each.key
  repo_desc = each.value
}
