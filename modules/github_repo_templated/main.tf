resource "github_repository" "repo" {
  name        = var.repo_name
  description = "${var.repo_desc} - Repo managed by Terraform"
  visibility  = var.visibility
  auto_init   = true # need to do this to ensure we can set the main branch as default below
  template {
    owner      = var.template.owner
    repository = var.template.repo_name
  }
}

data "github_branch" "main" {
  depends_on = [
    github_repository.repo
  ]
  repository = github_repository.repo.name
  branch     = "main"
}

resource "github_branch_default" "default" {
  repository = github_repository.repo.name
  branch     = data.github_branch.main.branch
}
