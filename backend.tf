terraform {
  backend "remote" {
    organization = "Diehlabs"
    workspaces {
      name = "github-mgmt"
    }
  }
}