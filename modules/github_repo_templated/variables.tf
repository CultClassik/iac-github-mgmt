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

variable "template" {
  description = "Repo to use as a template"
  type = object({
    owner     = string
    repo_name = string
  })
}

variable "managed_by" {
  description = "Name of the Terraform repo that manages this resource"
  type        = string
}
