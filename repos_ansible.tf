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
  for_each  = local.repos.ansible_roles
  repo_name = each.key
  repo_desc = each.value
}


# repo is empty, removing it for now
# module "ansible_role_k8s-node" {
#   source    = "./modules/github_repo"
#   repo_name = "
# }