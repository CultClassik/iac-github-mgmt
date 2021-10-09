# azure pipelines templates for terraform
module "azdo_terraform_pipeline_templates" {
  source    = "./modules/github_repo"
  repo_name = "azdo-terraform-pipeline-templates"
  repo_desc = "Azure Pipelines template repo for Terraform pipelines"
}

# Misc projects
module "misc_project_repos" {
  for_each  = local.repos.misc_projects
  source    = "./modules/github_repo"
  repo_name = each.key
  repo_desc = each.value
}
