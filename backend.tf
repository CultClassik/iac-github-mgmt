terraform {
  backend "remote" {
    organization = "Diehlabs"
    workspaces {
      name = "terraform-github-mgmt"
    }
  }
}