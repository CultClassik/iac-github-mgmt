# -----------------------------------------------------------------------------
# Module call to manage CultClassik repos
# -----------------------------------------------------------------------------
module "cultclassik_repos" {
  source     = "./modules/github-repo"
  managed_by = local.managed_by_repo
  repos = merge(
    local.repos_cultclasik,
    local.repos_cultclasik_iac,
  )
}

# -----------------------------------------------------------------------------
# Data used to manage CultClassik repos
# -----------------------------------------------------------------------------
locals {
  repos_cultclasik = {
    repo_0001 = {
      name = "gitops-apps"
      desc = "ArgoCD applications for a Kubernetes cluster"
    }
    repo_0002 = {
      name = "gitops-cm"
      desc = "ArgoCD configuration managements for a Kubernetes cluster"
    }
    repo_0003 = {
      name = "kubernetes-my-way"
      desc = "Based on Kubernetes the hard way, my way"
    }
    repo_0004 = {
      name = "py-tooling"
      desc = "Various Python code I play with"
    }
    repo_0005 = {
      name = "toolbox"
      desc = "Things that I use to help me be more efficient"
    }
  }

  repos_cultclasik_iac = {
    iac_repo_0001 = {
      name          = "iac-azure-resources"
      desc          = "Terraform code to manage Azure resources"
      tfe_workspace = true
      tfe_exec_mode = "local"
      tfe_org       = "Diehlabs"
      tfe_tags      = ["production"]

    }
    iac_repo_0002 = {
      name          = "iac-azure-aks-sandbox"
      desc          = "Sandbox for ArgoCD managed AKS cluster"
      tfe_workspace = true
      tfe_exec_mode = "local"
      tfe_org       = "Diehlabs"
      tfe_tags      = ["sandbox"]
    }
  }
}



# terraform state mv 'module.misc_project_repos["kubernetes-my-way"].data.github_branch.main' 'module.cultclassik_repos.module.repos["repo_0003"].data.github_branch.main' &&\
# terraform state mv 'module.misc_project_repos["kubernetes-my-way"].github_branch_default.default' 'module.cultclassik_repos.module.repos["repo_0003"].github_branch_default.default' &&\
# terraform state mv 'module.misc_project_repos["kubernetes-my-way"].github_repository.repo' 'module.cultclassik_repos.module.repos["repo_0003"].github_repository.repo'

