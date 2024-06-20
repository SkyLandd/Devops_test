// modules/ecr/main.tf
provider "aws" {
  region = var.region
}

resource "aws_ecr_repository" "ecr_repo" {
  name                 = var.repository_name
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
}

// modules/ecr/variables.tf
variable "region" {}
variable "repository_name" {}

// modules/ecr/outputs.tf
output "repository_url" {
  value = aws_ecr_repository.ecr_repo.repository_url
}
