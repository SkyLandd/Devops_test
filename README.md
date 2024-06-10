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




# Contributing to SkyLandd Devops Test

We welcome contributions from everyone! If you are not a collaborator but would like to contribute to this project, please follow these steps to fork the repository and submit a pull request:

## 1. Fork the Repository

1. Navigate to the main page of the repository.
2. Click the `Fork` button at the top right corner of the page.
3. This will create a copy of the repository in your GitHub account.

## 2. Clone Your Fork

1. Open your terminal or command prompt.
2. Clone your forked repository to your local machine using the following command:

    ```bash
    git clone https://github.com/your-username/back_end_test.git
    ```

3. Change into the repository directory:

    ```bash
    cd back_end_test
    ```

## 3. Create a New Branch

1. Create a new branch for your changes:

    ```bash
    git checkout -b your-branch-name
    ```

## 4. Make Changes and Commit

1. Make your desired changes to the code.
2. Stage the changes for commit:

    ```bash
    git add .
    ```

3. Commit the changes with a descriptive message:

    ```bash
    git commit -m "Description of the changes"
    ```

## 5. Push Changes to Your Fork

1. Push your changes to your forked repository on GitHub:

    ```bash
    git push origin your-branch-name
    ```

## 6. Create a Pull Request

1. Navigate to the original repository (the one you forked from).
2. Click on the `Pull requests` tab.
3. Click the `New pull request` button.
4. Select the branch you just pushed to your forked repository.
5. Fill in the details of the pull request, providing a clear title and description of your changes.
6. Click `Create pull request`.

## 7. Wait for Review

Your pull request will be reviewed by the repository maintainers. You may be asked to make additional changes before it can be merged.

Thank you for contributing!

Good luck!

## Deadline

Submission Deadline: 15/06/2024
