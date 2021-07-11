module "ansible_control" {
  source     = "./modules/github_repo"
  repo_name  = "ansible-control"
  repo_desc  = "Ansible role for managing hosts using Ansible - Repo managed by Terraform"
  visibility = "private"
}

####################################
# Ansible ROLE repositories
####################################
module "ansible_role_terraform" {
  source    = "./modules/github_repo"
  repo_name = "ansible-role-terraform"
  repo_desc = "Ansible role for managing Terraform and related tooling - Repo managed by Terraform"
}

module "ansible_role_git" {
  source    = "./modules/github_repo"
  repo_name = "ansible-role-git"
  repo_desc = "Ansible role for managing Git client tooling - Repo managed by Terraform"
}

module "ansible_role_zsh" {
  source    = "./modules/github_repo"
  repo_name = "ansible-role-zsh"
  repo_desc = "Ansible role for managing zsh - Repo managed by Terraform"
}

module "ansible_role_cryptominer" {
  source    = "./modules/github_repo"
  repo_name = "ansible-role-cryptominer"
  repo_desc = "Ansible role for managing cryptominer - Repo managed by Terraform"
}

module "ansible_role_docker" {
  source    = "./modules/github_repo"
  repo_name = "ansible-role-docker"
  repo_desc = "Ansible role for managing Docker - Repo managed by Terraform"
}

module "ansible_role_vagrant" {
  source    = "./modules/github_repo"
  repo_name = "ansible-role-vagrant"
  repo_desc = "Ansible role for managing Vagrant - Repo managed by Terraform"
}

##
## Kuberenetes Specific
##
module "ansible_role_kubetools" {
  source    = "./modules/github_repo"
  repo_name = "ansible-role-kubetools"
  repo_desc = "Ansible role for managing Kubernetes client tooling - Repo managed by Terraform"
}

module "ansible_role_k8s-certificates" {
  source    = "./modules/github_repo"
  repo_name = "ansible-role-k8s-certificates"
  repo_desc = "Ansible role for managing k8s-certificates - Repo managed by Terraform"
}

module "ansible_role_k8s-node" {
  source    = "./modules/github_repo"
  repo_name = "ansible-role-k8s-node"
  repo_desc = "Ansible role for managing Kubernetes nodes - Repo managed by Terraform"
}