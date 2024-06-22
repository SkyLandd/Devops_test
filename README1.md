# Game Development DevOps Test

## Introduction

This test evaluates your skills in setting up and managing DevOps practices for game development using Amazon Web Services (AWS) with a focus on AWS GameLift, containerization, monitoring, logging, and basic security practices.

## Prerequisites

Before you start, ensure you have access to the following:
- An Amazon Web Services (AWS) account with necessary permissions to set up GameLift and EC2 instances.
- Basic familiarity with Docker and CI/CD tools.

If you do not have access to these environments, please reach out to us for setup assistance.

## Tasks

### 1. CI/CD Pipeline Configuration

- **Objective**: Configure a CI/CD pipeline on AWS to build and deploy a sample game project.
- **Instructions**:
  1. Set up a CI/CD pipeline using AWS CodePipeline.
  2. Clone a sample game project repository.
  3. Configure the pipeline to build and deploy the project to an AWS EC2 instance.
  4. Ensure the deployment includes an AWS GameLift setup for hosting the game server.

- **Deliverable**: 
  - `buildspec.yml` for AWS.
  - Documentation outlining the steps taken and any challenges faced.

### 2. Containerization

- **Objective**: Containerize a simple game server application and prepare it for AWS GameLift.
- **Instructions**:
  1. Create a Dockerfile for a basic Node.js game server application.
  2. Ensure the Dockerfile sets up the environment, copies the server code, and starts the server.
  3. Include configuration for AWS GameLift integration.

- **Deliverable**: 
  - Dockerfile.
  - Documentation outlining the steps taken and any challenges faced.

### 3. Monitoring and Logging

- **Objective**: Set up basic monitoring and logging for the game server using AWS GameLift.
- **Instructions**:
  1. Use AWS CloudWatch for metrics (CPU, memory).
  2. Set up logging with AWS CloudWatch Logs.
  3. Ensure integration with AWS GameLift to monitor game server performance.

- **Deliverable**: 
  - Configuration files or scripts for monitoring and logging.
  - Documentation outlining the steps taken and any challenges faced.

### 4. Security Best Practices

- **Objective**: Implement basic security checks in the CI/CD pipeline.
- **Instructions**:
  1. Integrate a security tool (e.g., SonarQube) to scan for vulnerabilities.
  2. Ensure the pipeline fails if critical vulnerabilities are found.

- **Deliverable**: 
  - CI/CD configuration updates for security scans.
  - Documentation outlining the steps taken and any challenges faced.

## Submission Guidelines

1. Fork this repository and create a new branch.
2. Complete the tasks and commit your changes.
3. Push your changes to your forked repository.
4. Open a pull request to this repository with your changes.

## Evaluation Criteria

- **Correctness**: Meets all specified requirements.
- **Efficiency**: Optimized for performance.
- **Documentation**: Clear and concise.
- **Security**: Implements basic security checks.
- **Relevance**: Demonstrates understanding and integration of AWS GameLift and DevOps practices in game development.

## Deadline

Submission Deadline: 25/06/2024

Good luck!


