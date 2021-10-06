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


##
## Kuberenetes Specific
##
module "ansible_role_kubetools" {
  source    = "./modules/github_repo"
  repo_name = "ansible-role-kubetools"
  repo_desc = "Ansible role for managing Kubernetes client tooling"
}

module "ansible_role_k8s-certificates" {
  source    = "./modules/github_repo"
  repo_name = "ansible-role-k8s-certificates"
  repo_desc = "Ansible role for managing k8s-certificates"
}

module "ansible_role_k8s-node" {
  source    = "./modules/github_repo"
  repo_name = "ansible-role-k8s-node"
  repo_desc = "Ansible role for managing Kubernetes nodes"
}