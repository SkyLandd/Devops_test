// modules/codebuild/main.tf
provider "aws" {
  region = var.region
}

resource "aws_codebuild_project" "build_project" {
  name          = var.project_name
  description   = "Build project for ${var.project_name}"
  build_timeout = "30"
  service_role  = var.service_role

  artifacts {
    type = "S3"
    location = var.artifact_bucket
  }

  environment {
    compute_type                = "BUILD_GENERAL1_SMALL"
    image                       = "aws/codebuild/standard:5.0"
    type                        = "LINUX_CONTAINER"
    privileged_mode             = false
    environment_variable {
      name  = "AWS_DEFAULT_REGION"
      value = var.region
    }
  }

  source {
    type      = "GITHUB"
    location  = var.source_location
    git_clone_depth = 1
  }

  cache {
    type = "NO_CACHE"
  }
}

// modules/codebuild/variables.tf
variable "region" {}
variable "project_name" {}
variable "service_role" {}
variable "artifact_bucket" {}
variable "source_location" {}

// modules/codebuild/outputs.tf
output "build_project_name" {
  value = aws_codebuild_project.build_project.name
}
