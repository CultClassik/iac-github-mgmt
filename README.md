# terraform-github-mgmt
[![Terraform Configuration Run](https://github.com/CultClassik/iac-github-mgmt/actions/workflows/terraform.yml/badge.svg)](https://github.com/CultClassik/iac-github-mgmt/actions/workflows/terraform.yml)

Manages my personal Github resources.

Entrypoint for Github.

## Secrets
Two secrets must be set in the repository:
* GH_API_TOKEN
* TF_API_TOKEN

## Importing
Github:
1. repo: `terraform import 'module.misc_project_repos["my-repo"].github_repository.repo' my-repo`
2. branch default `terraform import 'module.misc_project_repos["my-repo"].github_branch_default.default' my-repo`

## TODO
After migration back to github on 9/24/22, re-add github workflow.


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 4.24.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.28.0 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | ~> 3.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | 4.24.1 |
| <a name="provider_github.diehlabs"></a> [github.diehlabs](#provider\_github.diehlabs) | 4.24.1 |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.28.1 |
| <a name="provider_vault"></a> [vault](#provider\_vault) | 3.3.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ansible_control"></a> [ansible\_control](#module\_ansible\_control) | git::https://github.com/Diehlabs/terraform-github-repo.git | tags/v0.0.2 |
| <a name="module_ansible_roles"></a> [ansible\_roles](#module\_ansible\_roles) | git::https://github.com/Diehlabs/terraform-github-repo.git | tags/v0.0.2 |
| <a name="module_diehlabs_ansible_roles"></a> [diehlabs\_ansible\_roles](#module\_diehlabs\_ansible\_roles) | git::https://github.com/Diehlabs/terraform-github-repo.git | tags/v0.0.2 |
| <a name="module_diehlabs_azdo_terraform_pipeline_templates"></a> [diehlabs\_azdo\_terraform\_pipeline\_templates](#module\_diehlabs\_azdo\_terraform\_pipeline\_templates) | git::https://github.com/Diehlabs/terraform-github-repo.git | tags/v0.0.2 |
| <a name="module_diehlabs_iac_repos"></a> [diehlabs\_iac\_repos](#module\_diehlabs\_iac\_repos) | git::https://github.com/Diehlabs/terraform-github-repo.git | tags/v0.0.2 |
| <a name="module_diehlabs_terraform_module_repos"></a> [diehlabs\_terraform\_module\_repos](#module\_diehlabs\_terraform\_module\_repos) | git::https://github.com/Diehlabs/terraform-github-repo.git | tags/v0.0.2 |
| <a name="module_github_action_templates"></a> [github\_action\_templates](#module\_github\_action\_templates) | git::https://github.com/Diehlabs/terraform-github-repo.git | tags/v0.0.2 |
| <a name="module_github_workflow_templates"></a> [github\_workflow\_templates](#module\_github\_workflow\_templates) | git::https://github.com/Diehlabs/terraform-github-repo.git | tags/v0.0.2 |
| <a name="module_iac_repos"></a> [iac\_repos](#module\_iac\_repos) | git::https://github.com/Diehlabs/terraform-github-repo.git | tags/v0.0.2 |
| <a name="module_misc_project_repos"></a> [misc\_project\_repos](#module\_misc\_project\_repos) | git::https://github.com/Diehlabs/terraform-github-repo.git | tags/v0.0.2 |
| <a name="module_misc_project_repos_diehlabs"></a> [misc\_project\_repos\_diehlabs](#module\_misc\_project\_repos\_diehlabs) | git::https://github.com/Diehlabs/terraform-github-repo.git | tags/v0.0.2 |
| <a name="module_terraform_module_repo_template"></a> [terraform\_module\_repo\_template](#module\_terraform\_module\_repo\_template) | git::https://github.com/Diehlabs/terraform-github-repo.git | tags/v0.0.2 |

## Resources

| Name | Type |
|------|------|
| [github_actions_organization_secret.gh_arm_client_id](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_organization_secret) | resource |
| [github_actions_organization_secret.gh_arm_client_secret](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_organization_secret) | resource |
| [github_actions_organization_secret.gh_arm_sub_id](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_organization_secret) | resource |
| [github_actions_organization_secret.gh_arm_tenant_id](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_organization_secret) | resource |
| [github_user_ssh_key.ssh_key_cultclassik](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/user_ssh_key) | resource |
| [tfe_workspace.iac_ws](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [terraform_remote_state.vault_mgmt](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |
| [vault_generic_secret.github_token](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.spn_terraform](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.ssh](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.tfe_tokens](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_repo_name"></a> [repo\_name](#input\_repo\_name) | The name on this Git repo. Used in descriptions of managed resources. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
