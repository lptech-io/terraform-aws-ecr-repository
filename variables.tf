variable "image_tag_mutability" {
  default = "IMMUTABLE"
  description = "Set image tag immutabile or not"
  type = string
  validation {
    condition = contains(["IMMUTABLE", "MUTABLE"], var.image_tag_mutability)
    error_message = "Valid values for image_tag_mutability are: ['IMMUTABLE', 'MUTABLE']"
  }
}
variable "repository_name" {
  description = "The ECR repository name"
  type        = string
  validation {
    condition = can(regex("?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*", var.repository_name))
    error_message = "Repository name follow the regex '?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*'"
  }
}
