# -----------------------------------------------------------------------------
# Module call to manage CultClassik repos
# -----------------------------------------------------------------------------
module "diehlabs_repos" {
  providers = {
    github = github.diehlabs
  }
  source     = "./modules/github-repo"
  managed_by = local.managed_by_repo
  repos = merge(
    local.repos_diehlabs,
    local.repos_diehlabs_ansible_roles,
    local.repos_terraform_modules,
  )
}

# -----------------------------------------------------------------------------
# Data used to manage CultClassik repos
# -----------------------------------------------------------------------------
locals {
  # -----------------------------------------------------------------------------
  # Misc repos
  # -----------------------------------------------------------------------------
  repos_diehlabs = {
    repo_0001 = {
      name = "pre-commit-hooks"
      desc = "Shared pre-commit hooks"
    }
    repo_0002 = {
      name = "terrahelpers"
      desc = "Go package for Terratest helper functions"
    }
    repo_0003 = {
      name = "go-builder"
      desc = "Go container for building Go projects and more"
    }
  }

  # -----------------------------------------------------------------------------
  # Ansible role repos
  # -----------------------------------------------------------------------------
  repos_diehlabs_ansible_roles = {
    repo_ansible_role_0000 = {
      name        = "ansible-role-scaffolding"
      desc        = "Base repo for a new Ansible role"
      is_template = true
    }
    repo_ansible_role_0001 = {
      name = "ansible-role-k8s-certificates"
      desc = "Ansible role for managing k8s-certificates"
    }
    repo_ansible_role_0002 = {
      name = "ansible-role-k8s-node"
      desc = "Ansible role for managing Kubernetes nodes"
    }
    repo_ansible_role_0003 = {
      name = "ansible-role-git"
      desc = "Ansible role for managing Git client tooling"
    }
    repo_ansible_role_0004 = {
      name = "ansible-role-terraform"
      desc = "Ansible role for managing Terraform and related tooling"
    }
    repo_ansible_role_0005 = {
      name = "ansible-role-kubetools"
      desc = "Ansible role for managing Kubernetes client tooling"
    }
    repo_ansible_role_0006 = {
      name = "ansible-role-docker"
      desc = "Ansible role for managing Docker"
    }
    repo_ansible_role_0007 = {
      name = "ansible-role-vagrant"
      desc = "Ansible role for managing Vagrant"
    }
    repo_ansible_role_0008 = {
      name = "ansible-role-unixuser"
      desc = "Ansible role for my user configuration"
    }
  }

  # -----------------------------------------------------------------------------
  # Terraform module repos
  # -----------------------------------------------------------------------------
  repos_terraform_modules = { for k, v in local.repos_diehlabs_tfmod : k =>
    merge(v,
      {
        use_template = true
        template = {
          owner     = "Diehlabs"
          repo_name = "terraform-module-scaffolding"
        }
      }
    )
  }
  repos_diehlabs_tfmod = {
    repo_tfmod_0000 = {
      name        = "terraform-module-scaffolding"
      desc        = "Base repo for a new Terraform module"
      is_template = true
    }
    repo_tfmod_0001 = {
      name = "terraform-azurerm-o365dns"
      desc = "Terraform module for managing DNS records in Azure DNS for Office 365"
    }
    repo_tfmod_0002 = {
      name = "terraform-github-repo"
      desc = "Terraform module for managing Github repositories"
    }
    repo_tfmod_0003 = {
      name = "terraform-azurerm-linuxvm"
      desc = "Terraform module for managing a basic Linux VM in Azure"
    }

    repo_tfmod_0004 = {
      name = "terraform-tls-k8scerts"
      desc = "Terraform module for managing TLS certificates for a Kubernetes cluster"
    }
    repo_tfmod_0005 = {
      name = "terraform-tls-private-ca-certs"
      desc = "Terraform module for creating a private CA and server sertificates"
    }
    repo_tfmod_0006 = {
      name = "terraform-tfe-workspaces"
      desc = "Terraform module for managing workspaces in TFE/TFC"
    }
    repo_tfmod_0007 = {
      name = "terraform-azurerm-vmss"
      desc = "Terraform module for a VM scale set in Azure"
    }
    repo_tfmod_0008 = {
      name = "terraform-azurerm-aks"
      desc = "Terraform module for a AKS cluster in Azure"
    }
    repo_tfmod_0009 = {
      name = "terraform-azurerm-storageacct"
      desc = "Terraform module for a storage account in Azure"
    }
    repo_tfmod_0010 = {
      name = "terraform-azurerm-akv"
      desc = "Terraform module for a keyvault in Azure"
    }
    repo_tfmod_0011 = {
      name = "terraform-gitlab-config"
      desc = "Terraform module for Gitlab configuration"
    }

  }


}

# repo_tfmod_000 = {
#   name         = ""
#   desc         = 
# }