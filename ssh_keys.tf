resource "github_user_ssh_key" "ssh_key_cultclassik" {
  title = "cultclassik"
  key   = data.terraform_remote_state.tfcloud.outputs.ssh_key_cultclassik.public_key_openssh
}

resource "github_user_ssh_key" "ssh_key_ansible" {
  title = "ansible"
  key   = data.terraform_remote_state.tfcloud.outputs.ssh_key_ansible.public_key_openssh
}
