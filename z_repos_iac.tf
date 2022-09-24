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
