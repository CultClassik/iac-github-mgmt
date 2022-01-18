locals {
  diehlabs_tf_module = {
    terraform-azurerm-o365dns = { desc = "Terraform module for creating DNS records in Azure DNS for Office 365" }
    terraform-azurerm-linuxvm = { desc = "Terraform module for creating a basic Linux VM in Azure" }
    terraform-tls-k8scerts    = { desc = "Terraform module for creating TLS certificates for a Kubernetes cluster" }
  }
  diehlabs_iac = {
    pulumi-kube-sandbox = { desc = "Pulumi code for Kubernetes testins" }
  }
  diehlabs_ansible_role = {
    ansible-role-scaffolding = {
      desc        = "Base repo for a new Ansible role"
      is_template = true
    }
    ansible-role-git       = { desc = "Ansible role for managing Git client tooling" }
    ansible-role-terraform = { desc = "Ansible role for managing Terraform and related tooling" }
    ansible-role-kubetools = { desc = "Ansible role for managing Kubernetes client tooling" }
    ansible-role-docker    = { desc = "Ansible role for managing Docker" }
    ansible-role-terraform = { desc = "Ansible role for managing Terraform and related tooling" }
    ansible-role-vagrant   = { desc = "Ansible role for managing Vagrant" }
    ansible-role-unixuser  = { desc = "Ansible role for my user configuration" }
  }
}
