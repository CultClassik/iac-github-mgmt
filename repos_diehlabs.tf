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

}
