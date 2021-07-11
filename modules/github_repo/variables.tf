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