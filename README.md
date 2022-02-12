# iac-github-mgmt
[![Terraform Configuration Run](https://github.com/CultClassik/iac-github-mgmt/actions/workflows/terraform.yml/badge.svg)](https://github.com/CultClassik/iac-github-mgmt/actions/workflows/terraform.yml)

Manages my personal Github resources.

## Secrets
Two secrets must be set in the repository:
* GH_API_TOKEN
* TF_API_TOKEN

## TODO
Configure pipeline to utilize Vault to obtain secrets and dynamic TFC token.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0.0 |
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 4.15.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.26.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | 4.15.1 |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.26.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ansible_control"></a> [ansible\_control](#module\_ansible\_control) | ./modules/github_repo | n/a |
| <a name="module_ansible_roles"></a> [ansible\_roles](#module\_ansible\_roles) | ./modules/github_repo | n/a |
| <a name="module_azdo_terraform_pipeline_templates"></a> [azdo\_terraform\_pipeline\_templates](#module\_azdo\_terraform\_pipeline\_templates) | ./modules/github_repo | n/a |
| <a name="module_diehlabs_ansible_roles"></a> [diehlabs\_ansible\_roles](#module\_diehlabs\_ansible\_roles) | ./modules/github_repo | n/a |
| <a name="module_diehlabs_iac_repos"></a> [diehlabs\_iac\_repos](#module\_diehlabs\_iac\_repos) | ./modules/github_repo | n/a |
| <a name="module_diehlabs_terraform_module_repos"></a> [diehlabs\_terraform\_module\_repos](#module\_diehlabs\_terraform\_module\_repos) | ./modules/github_repo_templated | n/a |
| <a name="module_github_action_templates"></a> [github\_action\_templates](#module\_github\_action\_templates) | ./modules/github_repo | n/a |
| <a name="module_iac_github_mgmt"></a> [iac\_github\_mgmt](#module\_iac\_github\_mgmt) | ./modules/github_repo | n/a |
| <a name="module_iac_repos"></a> [iac\_repos](#module\_iac\_repos) | ./modules/github_repo | n/a |
| <a name="module_misc_project_repos"></a> [misc\_project\_repos](#module\_misc\_project\_repos) | ./modules/github_repo | n/a |
| <a name="module_terraform_module_repo_template"></a> [terraform\_module\_repo\_template](#module\_terraform\_module\_repo\_template) | ./modules/github_repo | n/a |

## Resources

| Name | Type |
|------|------|
| [github_actions_secret.iac_github_mgmt_tftoken](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.tf_api_token](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_user_ssh_key.ssh_key_ansible](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/user_ssh_key) | resource |
| [github_user_ssh_key.ssh_key_cultclassik](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/user_ssh_key) | resource |
| [tfe_workspace.iac_github_mgmt](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_workspace.iac_ws](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [terraform_remote_state.tfcloud](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_tfe_token"></a> [tfe\_token](#input\_tfe\_token) | The TFCloud API Token | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->%

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 4.20.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.28.0 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | ~> 3.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | 4.20.0 |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |
| <a name="provider_vault"></a> [vault](#provider\_vault) | 3.2.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ansible_control"></a> [ansible\_control](#module\_ansible\_control) | ./modules/github_repo | n/a |
| <a name="module_ansible_roles"></a> [ansible\_roles](#module\_ansible\_roles) | ./modules/github_repo | n/a |
| <a name="module_azdo_terraform_pipeline_templates"></a> [azdo\_terraform\_pipeline\_templates](#module\_azdo\_terraform\_pipeline\_templates) | ./modules/github_repo | n/a |
| <a name="module_diehlabs_ansible_roles"></a> [diehlabs\_ansible\_roles](#module\_diehlabs\_ansible\_roles) | ./modules/github_repo | n/a |
| <a name="module_diehlabs_iac_repos"></a> [diehlabs\_iac\_repos](#module\_diehlabs\_iac\_repos) | ./modules/github_repo | n/a |
| <a name="module_diehlabs_terraform_module_repos"></a> [diehlabs\_terraform\_module\_repos](#module\_diehlabs\_terraform\_module\_repos) | ./modules/github_repo | n/a |
| <a name="module_github_action_templates"></a> [github\_action\_templates](#module\_github\_action\_templates) | ./modules/github_repo | n/a |
| <a name="module_github_workflow_templates"></a> [github\_workflow\_templates](#module\_github\_workflow\_templates) | ./modules/github_repo | n/a |
| <a name="module_misc_project_repos"></a> [misc\_project\_repos](#module\_misc\_project\_repos) | ./modules/github_repo | n/a |
| <a name="module_terraform_module_repo_template"></a> [terraform\_module\_repo\_template](#module\_terraform\_module\_repo\_template) | ./modules/github_repo | n/a |

## Resources

| Name | Type |
|------|------|
| [github_user_ssh_key.ssh_key_cultclassik](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/user_ssh_key) | resource |
| [terraform_remote_state.vault_mgmt](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |
| [vault_generic_secret.github_token](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.ssh](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.tfe_tokens](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_repo_name"></a> [repo\_name](#input\_repo\_name) | The name on this Git repo. Used in descriptions of managed resources. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
