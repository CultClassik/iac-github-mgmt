resource "github_repository" "repo" {
  name        = var.repo_name
  description = var.repo_desc
  visibility  = var.visibility
}
