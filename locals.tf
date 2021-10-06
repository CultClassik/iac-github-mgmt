locals {
  repos = {
    tf_module = {
      terraform-module-scaffolding = "Base repo for a new Terraform module"
      #terraform-azurerm-o365dns      = "Terraform module for creating DNS records in Azure DNS for Office 365"
      #terraform-azurerm-github-repos = "Terraform module for creating Github repos"
    }
    iac = {
      #iac-github-mgmt = "Manages Github resources" # this is managed on it's own in main.tf, since it's this actual repo
      #"iac-aws-resources" = "Terraform code to manage AWS resources"
    }
    ansible_roles = {
      ansible-role-terraform        = "Ansible role for managing Terraform and related tooling"
      ansible-role-git              = "Ansible role for managing Git client tooling"
      ansible-role-vagrant          = "Ansible role for managing Vagrant"
      ansible-role-zsh              = "Ansible role for managing zsh"
      ansible-role-cryptominer      = "Ansible role for managing cryptominer"
      ansible-role-docker           = "Ansible role for managing Docker"
      ansible-role-kubetools        = "Ansible role for managing Kubernetes client tooling"
      ansible-role-k8s-certificates = "Ansible role for managing k8s-certificates"
      #ansible-role-k8s-node = "Ansible role for managing Kubernetes nodes"
    }
    misc_projects = {
    }
  }
}