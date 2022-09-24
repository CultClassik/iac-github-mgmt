terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = ">= 4"
    }
    tfe = {
      source  = "hashicorp/tfe"
      version = ">= 0.28"
    }
  }
}
