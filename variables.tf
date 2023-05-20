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
}
