locals {
  diehlabs_tf_module = {
    terraform-azurerm-o365dns      = { desc = "Terraform module for managing DNS records in Azure DNS for Office 365" }
    terraform-github-repo          = { desc = "Terraform module for managing Github repositories" }
    terraform-azurerm-linuxvm      = { desc = "Terraform module for managing a basic Linux VM in Azure" }
    terraform-tls-k8scerts         = { desc = "Terraform module for managing TLS certificates for a Kubernetes cluster" }
    terraform-tls-private-ca-certs = { desc = "Terraform module for creating a private CA and server sertificates" }
    terraform-tfe-workspaces       = { desc = "Terraform module for managing workspaces in TFE/TFC" }
    terraform-azurerm-vmss         = { desc = "Terraform module for a VM scale set in Azure" }
    terraform-azurerm-aks          = { desc = "Terraform module for a AKS cluster in Azure" }
    terraform-azurerm-storageacct  = { desc = "Terraform module for a VM scale set in Azure" }
    terraform-azurerm-akv          = { desc = "Terraform module for a VM scale set in Azure" }
    terraform-gitlab-config        = { desc = "Terraform module for Gitlab configuration" }
  }

  diehlabs_iac = {
    pulumi-kube-sandbox          = { desc = "Pulumi code for Kubernetes testins" }
    terraform-hashivault-cluster = { desc = "Terraform configuration for a HashiCorp Vault Cluster in azure" }
  }

  cultclassik_ansible_roles = {
    ansible-role-zsh              = { desc = "Ansible role for managing zsh" }
    ansible-role-cryptominer      = { desc = "Ansible role for managing cryptominer" }
    ansible-role-k8s-certificates = { desc = "Ansible role for managing k8s-certificates" }
    ansible-role-k8s-node         = { desc = "Ansible role for managing Kubernetes nodes" }
  }

}
