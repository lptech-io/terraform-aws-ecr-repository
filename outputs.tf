output "ecr_repository_arn" {
  description = "ECR Repository ARN"
  value       = aws_ecr_repository.repository.arn
}

output "ecr_repository_id" {
  description = "ECR Repository Id"
  value       = aws_ecr_repository.repository.id
}

output "ecr_repository_name" {
  description = "ECR Repository Name"
  value       = aws_ecr_repository.repository.name
}

output "ecr_repository_url" {
  description = "ECR Repository URL"
  value       = aws_ecr_repository.repository.repository_url
}
