# Jenkins CI/CD Pipeline Demo

This project demonstrates the setup and implementation of Continuous Integration and Continuous Deployment (CI/CD) pipelines using Jenkins. It is part of the ITI Data Engineering Track and is intended for educational and demonstration purposes only.

## Project Overview

This repository contains sample applications with Jenkins pipeline configurations that demonstrate automated building, testing, and deployment workflows.

## Project Structure

- `java-app/` - Sample Java application with Jenkins pipeline
  - `Main.java` - Simple Java application
  - `Jenkinsfile` - Pipeline script for Java application
- `python-app/` - Sample Python application with Docker and Jenkins pipeline
  - `main.py` - Python application code
  - `Dockerfile` - Container configuration for Python app
  - `Jenkinsfile` - Pipeline script for Python application
- `sharedlib/vars/` - Shared Jenkins library scripts
  - `bounds.groovy` - Reusable pipeline function
- `Dockerfile` - Root level Dockerfile for demonstration
- `screenshots/` - Visual documentation of the pipeline execution

## Step-by-Step Guide

### 1. Setting Up Jenkins

1. Install Jenkins on your system or use a cloud-based Jenkins instance
2. Configure Jenkins with necessary plugins:
   - Docker Pipeline
   - Pipeline
   - Git Integration

### 2. Configuring the Java Pipeline

The Java application pipeline:
1. Compiles Java code
2. Packages the application into a JAR file
3. Builds a Docker image
4. Pushes the image to DockerHub (with credentials)

### 3. Configuring the Python Pipeline

The Python application pipeline:
1. Sets up the Python environment
2. Runs tests and linting in parallel
3. Builds a Docker image for the Python application
4. Runs the containerized application

### 4. Using Shared Libraries

This project demonstrates how to create and use shared pipeline libraries:
1. The `bounds.groovy` script provides a reusable function
2. Both pipelines import this shared library using `@Library('sharedlib') _`

## Running the Pipelines

1. Fork or clone this repository
2. Set up Jenkins with the required plugins
3. Create a new Pipeline job in Jenkins
4. Configure the job to use the Jenkinsfile from either application
5. Run the pipeline and observe the build process

## Author

Part of the ITI Data Engineering Track.

---

*For educational purposes only.*

## Screenshots

Below are screenshots demonstrating different stages of the CI/CD pipeline in action:

### Python Pipeline Overview
This shows the complete pipeline execution for the Python application:
![Python Pipeline Overview](screenshots/Python%20Pipeline%20overview.png)

### Output After Running Python Pipeline
Terminal output showing successful execution of the Python pipeline:
![Output after running Python pipeline](screenshots/Output%20after%20running%20Python%20pipeline.png)

### Docker Desktop After Running the Pipeline
Docker Desktop showing the containerized applications after pipeline execution:
![Docker Desktop After Running the Pipeline](screenshots/Docker%20Desktop%20After%20Running%20the%20pipline.png)

### DockerHub After Running Java Pipeline
DockerHub repository showing the successfully pushed Java application image:
![Dockerhub after running java pipeline](screenshots/Dockerhub%20after%20running%20java%20pipeline.png)
