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
