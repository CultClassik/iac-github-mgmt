terraform {
  required_version = ">= 1.0.0"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.19.0"
    }
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.27.0"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "~> 3.1.0"
    }
  }
}
