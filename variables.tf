variable "image_tag_mutability" {
  default     = "IMMUTABLE"
  description = "Set image tag immutabile or not"
  type        = string
  validation {
    condition     = contains(["IMMUTABLE", "MUTABLE"], var.image_tag_mutability)
    error_message = "Valid values for image_tag_mutability are: ['IMMUTABLE', 'MUTABLE']"
  }
}

variable "is_for_lambda_deployment" {
  default     = false
  description = "Identify it the repository is for a lambda, in that case it push an alpine:latest image to the repository with the tag init"
  type        = bool
}

variable "repository_name" {
  description = "The ECR repository name"
  type        = string
}
