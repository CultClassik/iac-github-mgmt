locals {
  tf_version_default = "1.0.8"
  #github_token =  data.terraform_remote_state.tfcloud.outputs.github_token
  #tf_org_tokem = data.terraform_remote_state.tfcloud.outputs.tf_org_token
  diehlabs = {
    repos = {
      tf_module = {
        terraform-azurerm-o365dns = { desc = "Terraform module for creating DNS records in Azure DNS for Office 365" }
        terraform-azurerm-linuxvm = {
          desc        = "Terraform module for a basic Azure Linux VM"
          is_template = true
        }
      }
      iac = {}
      ansible_roles = {
        ansible-role-scaffolding = {
          desc        = "Base repo for a new Ansible role"
          is_template = true
        }
        ansible-role-git       = { desc = "Ansible role for managing Git client tooling" }
        ansible-role-terraform = { desc = "Ansible role for managing Terraform and related tooling" }
        ansible-role-kubetools = { desc = "Ansible role for managing Kubernetes client tooling" }
        ansible-role-docker    = { desc = "Ansible role for managing Docker" }
      }
    }
  }
  cultclassik = {
    repos = {
      tf_module = {
        terraform-module-scaffolding = "Base repo for a new Terraform module"
      }
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
