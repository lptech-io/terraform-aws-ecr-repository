variable "access_allowed_aws_account_ids" {
  default     = []
  description = "A list of AWS account IDs that are allowed to access the repository"
  type        = list(string)
}

variable "repository_name" {
  description = "The ECR repository name"
  type        = string
}
