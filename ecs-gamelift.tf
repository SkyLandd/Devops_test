// modules/ecs-gamelift/main.tf
provider "aws" {
  region = var.region
}

resource "aws_ecs_cluster" "ecs_cluster" {
  name = var.cluster_name
}

resource "aws_ecs_task_definition" "task_definition" {
  family                = var.family
  network_mode          = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                   = "256"
  memory                = "512"
  execution_role_arn    = var.execution_role
  container_definitions = jsonencode([
    {
      name      = "game-server"
      image     = var.container_image
      essential = true
      portMappings = [
        {
          containerPort = 8080
          hostPort      = 8080
          protocol      = "tcp"
        }
      ]
    }
  ])
}

resource "aws_ecs_service" "ecs_service" {
  name            = var.service_name
  cluster         = aws_ecs_cluster.ecs_cluster.id
  task_definition = aws_ecs_task_definition.task_definition.arn
  desired_count   = var.desired_count
  launch_type     = "FARGATE"

  network_configuration {
    subnets         = var.subnets
    security_groups = var.security_groups
  }
}

// modules/ecs-gamelift/variables.tf
variable "region" {}
variable "cluster_name" {}
variable "family" {}
variable "execution_role" {}
variable "container_image" {}
variable "service_name" {}
variable "desired_count" {}
variable "subnets" {
  type = list(string)
}
variable "security_groups" {
  type = list(string)
}

// modules/ecs-gamelift/outputs.tf
output "service_name" {
  value = aws_ecs_service.ecs_service.name
}
