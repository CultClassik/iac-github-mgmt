# The template repo for tf module repos
module "terraform_module_repo_template" {
  providers = {
    github = github.diehlabs
  }
  source      = "./modules/github_repo"
  repo_name   = "terraform-module-scaffolding"
  repo_desc   = "Base repo for a new Terraform module"
  is_template = true
}

# Terraform modules based on the template repo
module "diehlabs_terraform_module_repos" {
  providers = {
    github = github.diehlabs
  }
  for_each  = local.diehlabs.repos.tf_module
  source    = "./modules/github_repo_templated"
  repo_name = each.key
  repo_desc = each.value.desc
  template = {
    owner     = "Diehlabs"
    repo_name = "terraform-module-scaffolding"
  }
}
