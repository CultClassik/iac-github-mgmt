# azure pipelines templates for terraform
module "diehlabs_azdo_terraform_pipeline_templates" {
  providers = {
    github = github.diehlabs
  }
  source     = "git::https://github.com/Diehlabs/terraform-github-repo.git?ref=tags/v0.0.2"
  repo_name  = "azdo-terraform-pipeline-templates"
  repo_desc  = "Azure Pipelines templates repo for Terraform pipelines"
  managed_by = local.managed_by
}

module "diehlabs_iac_repos" {
  providers = {
    github = github.diehlabs
  }
  for_each   = local.diehlabs_iac
  source     = "git::https://github.com/Diehlabs/terraform-github-repo.git?ref=tags/v0.0.2"
  repo_name  = each.key
  repo_desc  = each.value.desc
  managed_by = local.managed_by
}
