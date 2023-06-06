output "arn" {
  description = "ECR Repository ARN"
  value       = aws_ecr_repository.repository.arn
}

output "id" {
  description = "ECR Repository Id"
  value       = aws_ecr_repository.repository.id
}

output "name" {
  description = "ECR Repository Name"
  value       = aws_ecr_repository.repository.name
}

output "url" {
  description = "ECR Repository URL"
  value       = aws_ecr_repository.repository.repository_url
}

output "ssm_active_container_tag" {
  description = "SSM Arn for active container tag"
  value       = aws_ssm_parameter.active_docker_tag.name
}
