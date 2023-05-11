resource "aws_ecr_repository" "repository" {
  force_delete = true
  image_scanning_configuration {
    scan_on_push = true
  }
  image_tag_mutability = "IMMUTABLE"
  name                 = var.repository_name
}

resource "aws_ssm_parameter" "active_docker_tag" {
  name  = "ECR/${var.repository_name}/ActiveTag"
  description = "Active container tag in the ${var.repository_name} ECR repository"
  type  = "String"
}