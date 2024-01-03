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

resource "aws_ecr_lifecycle_policy" "maintain_x_images" {
  count      = var.lifecycle_rule.enabled ? 1 : 0
  repository = aws_ecr_repository.repository.name
  policy     = jsonencode({
    rules = [{
      rulePriority = 1
      description  = "Keep last ${var.lifecycle_rule.images_to_maintain} images"
      selection = {
        tagStatus   = "any"
        countType   = "imageCountMoreThan"
        countNumber = var.lifecycle_rule.images_to_maintain
      }
      action = {
        type = "expire"
      }
    }]
  })
}
