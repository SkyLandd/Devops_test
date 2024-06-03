# Game Development DevOps Test

## Introduction

Welcome to the Game Development DevOps Test. This test is designed to evaluate your proficiency in setting up and managing DevOps practices tailored for game development using either Google Cloud Platform (GCP) or Amazon Web Services (AWS), containerization, monitoring, logging, and basic security practices.

## Tasks

### 1. CI/CD Pipeline Configuration with GCP or AWS

- **Objective**: Configure a CI/CD pipeline on either GCP or AWS to build and deploy an Unreal Engine game project.
- **Instructions**:
  1. Set up a CI/CD pipeline using Google Cloud Build or AWS CodePipeline.
  2. Clone a repository containing a sample Unreal Engine game project.
  3. Use Unreal Build Tool (UBT) to compile the game project.
  4. Deploy the build to a GCP Compute Engine instance or an AWS EC2 instance.
  
- **Expected Deliverable**: 
  - A `cloudbuild.yaml` file configured to build and deploy the project on GCP, or
  - A `buildspec.yml` file configured to build and deploy the project on AWS.

### 2. Containerization

- **Objective**: Containerize a simple game server application.
- **Instructions**:
  1. Create a Dockerfile for a basic Node.js game server application.
  2. Ensure the Dockerfile sets up the environment, copies the server code, and starts the server.
  
- **Expected Deliverable**: A Dockerfile that builds and runs the server application.

### 3. Monitoring and Logging

- **Objective**: Set up basic monitoring and logging for the game server using GCP or AWS.
- **Instructions**:
  1. Use Google Cloud Monitoring or AWS CloudWatch to collect basic metrics (CPU, memory usage) from the game server.
  2. Set up Google Cloud Logging or AWS CloudWatch Logs to capture logs from the game server.
  
- **Expected Deliverable**: Documentation or configuration files showing the setup for monitoring and logging.

### 4. Security Best Practices

- **Objective**: Implement basic security checks in the CI/CD pipeline.
- **Instructions**:
  1. Integrate a security tool to scan for vulnerabilities (e.g., SonarQube).
  2. Ensure the pipeline fails if critical vulnerabilities are found.
  
- **Expected Deliverable**: Updates to the CI/CD configuration to include security scans.

## Submission Guidelines

1. Fork this repository.
2. Create a new branch for your changes.
3. Complete the tasks and commit your changes.
4. Push your changes to your forked repository.
5. Open a pull request to this repository with your changes.
6. Include a detailed description of your setup and how to run the tests in the pull request.

## Evaluation Criteria

- **Correctness**: The solution meets all specified requirements and tasks.
- **Efficiency**: The pipeline, containerization, and monitoring setups are optimized for performance.
- **Documentation**: Clear and concise documentation is provided.
- **Security**: Basic security checks are implemented.

Good luck!

## Deadline

Submission Deadline: 06/06/2024
