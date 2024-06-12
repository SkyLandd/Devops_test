// modules/s3-bucket/main.tf
provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "codepipeline_bucket" {
  bucket = var.bucket_name
  acl    = "private"
}

// modules/s3-bucket/variables.tf
variable "region" {}
variable "bucket_name" {}

// modules/s3-bucket/outputs.tf
output "bucket_name" {
  value = aws_s3_bucket.codepipeline_bucket.bucket
}
