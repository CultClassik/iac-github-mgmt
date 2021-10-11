module "ansible_control" {
  source     = "./modules/github_repo"
  repo_name  = "ansible-control"
  repo_desc  = "Ansible role for managing hosts using Ansible"
  visibility = "private"
}

####################################
# Ansible ROLE repositories
####################################
module "ansible_roles" {
  source    = "./modules/github_repo"
  for_each  = local.cultclassik.repos.ansible_roles
  repo_name = each.key
  repo_desc = each.value
}

module "diehlabs_ansible_roles" {
  providers = {
    github = github.diehlabs
  }
  source    = "./modules/github_repo"
  for_each  = local.diehlabs.repos.ansible_roles
  repo_name = each.key
  repo_desc = each.value
}
