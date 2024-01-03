variable "lifecycle_rule" {
  default = {
    enabled = true
    images_to_maintain = 30
  }
  description = "Controller for lifecycle rule"
  type = object({
    enabled = optional(bool, true)
    images_to_maintain = optional(number, 30)
  })
}

variable "image_tag_mutability" {
  default     = "IMMUTABLE"
  description = "Set image tag immutabile or not"
  type        = string
  validation {
    condition     = contains(["IMMUTABLE", "MUTABLE"], var.image_tag_mutability)
    error_message = "Valid values for image_tag_mutability are: ['IMMUTABLE', 'MUTABLE']"
  }
}

variable "repository_name" {
  description = "The ECR repository name"
  type        = string
}
