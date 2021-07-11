terraform {
  backend "remote" {
    organization = "Diehlabs"
    workspaces {
      name = "azdo-mgmt"
    }
  }
}