# azure pipelines templates for terraform
module "azdo_terraform_pipeline_templates" {
  source     = "./modules/github_repo"
  repo_name  = "azdo-terraform-pipeline-templates"
  repo_desc  = "Azure Pipelines template repo for Terraform pipelines"
  managed_by = local.managed_by
}

# Misc projects
module "misc_project_repos" {
  for_each   = local.cultclassik_misc_projects
  source     = "git::https://github.com/Diehlabs/terraform-github-repo.git?ref=tags/v0.0.2"
  repo_name  = each.key
  repo_desc  = each.value.desc
  managed_by = local.managed_by
}
