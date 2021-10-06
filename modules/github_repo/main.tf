resource "github_repository" "repo" {
  name        = var.repo_name
  description = "${var.repo_desc} - Repo managed by Terraform"
  visibility  = var.visibility
  auto_init = true # need to do this to ensure we can set the main branch as default below
}

resource "github_branch" "main" {
  repository = github_repository.repo.name
  branch     = "main"
}

resource "github_branch_default" "default" {
  depends_on = [
    github_branch.main
  ]
  repository = github_repository.repo.name
  branch     = github_branch.main.branch
}
