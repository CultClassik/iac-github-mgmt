provider "github" {
  token = var.github_token
}

data "terraform_remote_state" "tfcloud" {
  backend = "remote"

  config = {
    organization = "Diehlabs"
    workspaces = {
      name = "tfcloud-mgmt"
    }
  }
}

resource "github_user_ssh_key" "ssh_key_cultclassik" {
  title = "cultclassik"
  key   = data.terraform_remote_state.tfcloud.outputs.ssh_key_cultclassik.public_key_openssh
}