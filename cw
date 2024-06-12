// modules/cloudwatch/main.tf
provider "aws" {
  region = var.region
}

resource "aws_cloudwatch_log_group" "log_group" {
  name              = "/aws/gamelift/my-game-server"
  retention_in_days = 30
}

// modules/cloudwatch/variables.tf
variable "region" {}

// modules/cloudwatch/outputs.tf
output "log_group_name" {
  value = aws_cloudwatch_log_group.log_group.name
}
