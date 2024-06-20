// main.tf
provider "aws" {
  region = "us-east-1"
}

module "s3_bucket" {
  source      = "./modules/s3-bucket"
  region      = "us-east-1"
  bucket_name = "my-game-ci-artifacts"
}

module "ecr" {
  source          = "./modules/ecr"
  region          = "us-east-1"
  repository_name = "unity-sampleproject"
}

module "cloudwatch" {
  source = "./modules/cloudwatch"
  region = "us-east-1"
}

module "codebuild" {
  source          = "./modules/codebuild"
  region          = "us-east-1"
  project_name    = "UnitySampleProject"
  service_role    = "<your-codebuild-service-role-arn>"
  artifact_bucket = module.s3_bucket.bucket_name
  source_location = "https://github.com/heroiclabs/unity-sampleproject.git"
}

module "codepipeline" {
  source            = "./modules/codepipeline"
  region            = "us-east-1"
  pipeline_name     = "UnitySampleProjectPipeline"
  service_role      = "<your-codepipeline-service-role-arn>"
  artifact_bucket   = module.s3_bucket.bucket_name
  github_owner      = "<your-github-owner>"
  github_repo       = "unity-sampleproject"
  github_branch     = "main"
  github_oauth_token = "<your-github-oauth-token>"
  build_project_name = module.codebuild.build_project_name
}

module "ecs_gamelift" {
  source           = "./modules/ecs-gamelift"
  region           = "us-east-1"
  cluster_name     = "GameLiftCluster"
  family           = "unity-sampleproject"
  execution_role   = "<your-ecs-execution-role-arn>"
  container_image  = module.ecr.repository_url
  service_name     = "GameLiftService"
  desired_count    = 1
  subnets          = ["<your-subnet-id-1>", "<your-subnet-id-2>"]
  security_groups  = ["<your-security-group-id>"]
}

module "security" {
  source          = "./modules/security"
  region          = "us-east-1"
  project_name    = "UnitySampleProjectWithSonar"
  service_role    = "<your-codebuild-service-role-arn>"
  artifact_bucket = module.s3_bucket.bucket_name
  source_location = "https://github.com/heroiclabs/unity-sampleproject.git"
}
