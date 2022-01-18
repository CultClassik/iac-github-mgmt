variable "visibility" {
  description = "public or private"
  type        = string
  default     = "public"
}

variable "repo_name" {
  description = "Name of repository to create"
  type        = string
}

variable "repo_desc" {
  description = "Description of repository to create"
  type        = string
}

variable "managed_by" {
  description = "Name of the Terraform repo that manages this resource"
  type        = string
}

variable "is_template" {
  description = "Set to true to tell GitHub that this is a template repository."
  default     = false
}
