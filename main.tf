resource "aws_ecr_repository" "repository" {
  force_delete = true
  image_scanning_configuration {
    scan_on_push = true
  }
  image_tag_mutability = var.image_tag_mutability
  name                 = var.repository_name
}

resource "aws_ssm_parameter" "active_docker_tag" {
  name        = "/ECR/${var.repository_name}/ActiveTag"
  description = "Active container tag for ${var.repository_name} ECR repository"
  type        = "String"
  value       = "${aws_ecr_repository.repository.repository_url}:init"
  lifecycle {
    ignore_changes = [value]
  }
}

resource "dockerless_remote_image" "init_image_creation" {
  count  = var.is_for_lambda_deployment ? 1 : 0
  source = "alpine:latest"
  target = "${aws_ecr_repository.repository.repository_url}:init"
}
