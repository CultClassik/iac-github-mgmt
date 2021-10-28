locals {
  diehlabs = {
    repos = {
      tf_module = {
        terraform-azurerm-o365dns = { desc = "Terraform module for creating DNS records in Azure DNS for Office 365" }
        terraform-azurerm-linuxvm = { desc = "Terraform module for creating a basic Linux VM in Azure" }
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
}
