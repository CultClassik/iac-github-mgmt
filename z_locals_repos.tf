locals {

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
