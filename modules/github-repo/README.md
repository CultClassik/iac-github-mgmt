```json
locals {
  repos = {
    repo_001 = {
      name          = "repo1"
      desc          = "repo 1 stuff"
      tfe_workspace = true
      tfe_exec_mode = "local"
      tfe_org       = "Diehlabs"
      is_template   = false
      use_template  = true
      tfe_tags      = []
      template = {
        owner     = "Diehlabs"
        repo_name = "terraform-module-scaffolding"
      }
    }
    repo_002 = {
      name = "repo-2"
      desc = "repo 2 stuff"
    }
  }
}
```