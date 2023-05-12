<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ecr_repository.repository](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository) | resource |
| [aws_ssm_parameter.active_docker_tag](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_repository_name"></a> [repository\_name](#input\_repository\_name) | The ECR repository name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ecr_repository_arn"></a> [ecr\_repository\_arn](#output\_ecr\_repository\_arn) | ECR Repository ARN |
| <a name="output_ecr_repository_id"></a> [ecr\_repository\_id](#output\_ecr\_repository\_id) | ECR Repository Id |
| <a name="output_ecr_repository_name"></a> [ecr\_repository\_name](#output\_ecr\_repository\_name) | ECR Repository Name |
| <a name="output_ecr_repository_url"></a> [ecr\_repository\_url](#output\_ecr\_repository\_url) | ECR Repository URL |
| <a name="output_ssm_active_container_tag"></a> [ssm\_active\_container\_tag](#output\_ssm\_active\_container\_tag) | SSM Arn for active container tag |
<!-- END_TF_DOCS -->