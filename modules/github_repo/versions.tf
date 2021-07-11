terraform {
  required_version = "~> 1.0.0"
  required_providers {
    github1 = {
      source  = "integrations/github"
      version = "~> 4.12.0"
    }
  }
}
