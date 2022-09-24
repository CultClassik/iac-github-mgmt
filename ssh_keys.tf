# resource "github_user_ssh_key" "ssh_key_cultclassik" {
#   title = "cultclassik"
#   key   = data.vault_generic_secret.ssh.data.public_key_openssh
# }

# resource "github_user_ssh_key" "ssh_key_ansible" {
#   title = "ansible"
#   key   = data.terraform_remote_state.tfcloud.outputs.ssh_key_ansible.public_key_openssh
# }
