resource "github_repository" "repo" {
  name        = var.repo_name
  description = "${var.repo_desc} - ${var.managed_by}"
  visibility  = var.visibility
  auto_init   = true # need to do this to ensure we can set the main branch as default below
  is_template = var.is_template

  dynamic "template" {
    for_each = var.use_template ? [1] : []
    content {
      owner      = var.template.owner
      repository = var.template.repo_name
    }
  }

  lifecycle {
    ignore_changes = [
      etag,
    ]
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
