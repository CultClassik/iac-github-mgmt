terraform {
  backend "remote" {
    organization = "Diehlabs"
    workspaces {
      name = "iac-github-mgmt"
    }
  }
}