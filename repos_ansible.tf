module "ansible_control" {
  source     = "git::https://github.com/Diehlabs/terraform-github-repo.git?ref=tags/v0.0.2"
  repo_name  = "ansible-control"
  repo_desc  = "Ansible role for managing hosts using Ansible"
  managed_by = local.managed_by
  visibility = "private"
}

####################################
# Ansible ROLE repositories
####################################
module "ansible_roles" {
  source     = "git::https://github.com/Diehlabs/terraform-github-repo.git?ref=tags/v0.0.2"
  for_each   = local.cultclassik_ansible_roles
  repo_name  = each.key
  repo_desc  = each.value.desc
  managed_by = local.managed_by
}

module "diehlabs_ansible_roles" {
  providers = {
    github = github.diehlabs
  }
  source      = "git::https://github.com/Diehlabs/terraform-github-repo.git?ref=tags/v0.0.2"
  for_each    = local.diehlabs_ansible_role
  repo_name   = each.key
  repo_desc   = each.value.desc
  managed_by  = local.managed_by
  is_template = try(each.value.is_template, false)
}
