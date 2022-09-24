# -----------------------------------------------------------------------------
# 
# -----------------------------------------------------------------------------
module "repos" {
  for_each     = var.repos
  source       = "git::https://github.com/Diehlabs/terraform-github-repo.git?ref=tags/v0.0.2"
  repo_name    = each.value.name
  repo_desc    = each.value.desc
  managed_by   = var.managed_by
  is_template  = try(each.value.is_template, false)
  use_template = try(each.value.use_template, false)
  template     = try(each.value.template, null)
  visibility   = try(each.value.visibility, "public")
}

# -----------------------------------------------------------------------------
# Optionally create a TFE worksapce for each repo
# -----------------------------------------------------------------------------
resource "tfe_workspace" "ws" {
  for_each       = toset(local.workspaces)
  name           = replace(var.repos[each.value].name, " ", "-")
  description    = "${var.repos[each.value].desc} - ${var.managed_by}"
  organization   = var.repos[each.value].tfe_org
  execution_mode = var.repos[each.value].tfe_exec_mode
  tag_names      = try(var.repos[each.value].tfe_tags, [])
}

locals {
  workspaces = compact([for k, v in var.repos : try(var.repos[k].tfe_workspace, false) ? k : ""])
}
