terraform {
  backend "remote" {
    organization = "Diehlabs"
    workspaces {
      name = "iac-github-mgmt"
    }
  }
  required_version = "~> 1.0.0"
  required_providers {
    github = {
      source  = "integrations/github"
      version = ">= 4.15.0"
    }
  }
}
