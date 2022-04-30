terraform {
  required_version = ">= 1.0.0"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.24.0"
    }
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.28.0"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "~> 3.3.0"
    }
  }
}
