variable "private" {
    description = "True or False"
    type = string
    default = false
}

variable "repo_name" {
    description = "Name of repository to create"
    type = string
}

variable "repo_desc" {
    description = "Description of repository to create"
    type = string
}