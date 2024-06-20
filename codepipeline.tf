// modules/codepipeline/main.tf
provider "aws" {
  region = var.region
}

resource "aws_codepipeline" "code_pipeline" {
  name     = var.pipeline_name
  role_arn = var.service_role

  artifact_store {
    type     = "S3"
    location = var.artifact_bucket
  }

  stage {
    name = "Source"

    action {
      name             = "Source"
      category         = "Source"
      owner            = "ThirdParty"
      provider         = "GitHub"
      version          = "1"
      output_artifacts = ["source_output"]

      configuration = {
        Owner  = var.github_owner
        Repo   = var.github_repo
        Branch = var.github_branch
        OAuthToken = var.github_oauth_token
      }
    }
  }

  stage {
    name = "Build"

    action {
      name             = "Build"
      category         = "Build"
      owner            = "AWS"
      provider         = "CodeBuild"
      input_artifacts  = ["source_output"]
      output_artifacts = ["build_output"]

      configuration = {
        ProjectName = var.build_project_name
      }
    }
  }
}

// modules/codepipeline/variables.tf
variable "region" {}
variable "pipeline_name" {}
variable "service_role" {}
variable "artifact_bucket" {}
variable "github_owner" {}
variable "github_repo" {}
variable "github_branch" {}
variable "github_oauth_token" {}
variable "build_project_name" {}

// modules/codepipeline/outputs.tf
output "pipeline_name" {
  value = aws_codepipeline.code_pipeline.name
}
