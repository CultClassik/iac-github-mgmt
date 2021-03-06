locals {
  cultclassik = {
    repos = {
      iac = {
        #iac-github-mgmt = "Manages Github resources" # this is managed on it's own in main.tf, since it's this actual repo
        #"iac-aws-resources" = "Terraform code to manage AWS resources"
        iac-azure-resources = {
          desc = "Terraform code to manage Azure resources",
          exec = "local"
        }
      }
      ansible_roles = {
        ansible-role-terraform        = { desc = "Ansible role for managing Terraform and related tooling" }
        ansible-role-vagrant          = { desc = "Ansible role for managing Vagrant" }
        ansible-role-zsh              = { desc = "Ansible role for managing zsh" }
        ansible-role-cryptominer      = { desc = "Ansible role for managing cryptominer" }
        ansible-role-k8s-certificates = { desc = "Ansible role for managing k8s-certificates" }
        ansible-role-k8s-node         = { desc = "Ansible role for managing Kubernetes nodes" }
      }
      misc_projects = {
      }
    }
  }
}
