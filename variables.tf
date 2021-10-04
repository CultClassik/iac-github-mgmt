variable "github_token" {
  description = "The Github PAT"
  type        = string
  sensitive   = true
  default     = null
}

variable "tfe_token" {
  description = "The TFCloud API Token"
  type        = string
  sensitive   = true
}