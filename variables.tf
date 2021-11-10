# variable "github_token" {
#   description = "The Github PAT"
#   type        = string
#   sensitive   = true
#   default     = null
# }

variable "tfe_token" {
  description = "The TFCloud API Token. Must be configured as a secret in Github for use by actions."
  type        = string
  sensitive   = true
}
