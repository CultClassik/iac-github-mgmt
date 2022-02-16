locals {
  cultclassik_iac = {
    #iac-github-mgmt = "Manages Github resources" # this is managed on it's own in main.tf, since it's this actual repo
    iac-azure-resources = {
      desc = "Terraform code to manage Azure resources"
      exec = "local"
    }
    terraform-azure-resources = {
      desc = "Multiple Terraform configurations for managing resources an Azure"
      exec = "local"
    }
  }
  cultclassik_ansible_roles = {
    ansible-role-zsh              = { desc = "Ansible role for managing zsh" }
    ansible-role-cryptominer      = { desc = "Ansible role for managing cryptominer" }
    ansible-role-k8s-certificates = { desc = "Ansible role for managing k8s-certificates" }
    ansible-role-k8s-node         = { desc = "Ansible role for managing Kubernetes nodes" }
  }
  cultclassik_misc_projects = {
    py-tooling   = { desc = "Various Python code I play with" }
    my-dot-files = { desc = "Just my dot file stuff" }
  }
}
