locals {
  cultclassik_iac = {
    #iac-github-mgmt = "Manages Github resources" # this is managed on it's own in main.tf, since it's this actual repo
    iac-azure-resources = {
      desc = "Terraform code to manage Azure resources"
      exec = "local"
    }
    iac-azure-aks = {
      desc = "Sandbox for ArgoCD managed AKS cluster"
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
    kubernetes-my-way = { desc = "Based on Kubernetes the hard way, my way" }
    py-tooling        = { desc = "Various Python code I play with" }
    toolbox           = { desc = "Things that I use to help me be more efficient" }
    gitops-apps       = { desc = "ArgoCD applications for a Kubernetes cluster" }
    gitops-cm         = { desc = "ArgoCD configuration managements for a Kubernetes cluster" }
  }
}
