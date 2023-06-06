terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4"
    }
    dockerless = {
      source = "nullstone-io/dockerless"
    }
  }
}

provider "dockerless" {
  registry_auth = {
    element(split("/", aws_ecr_repository.repository.repository_url), 0) = {
      username = data.aws_ecr_authorization_token.current.user_name
      password = data.aws_ecr_authorization_token.current.password
    }
  }
}
