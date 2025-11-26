*****Reason for pushing it from saurabh mishra's account is, he is my brother and I am using his laptop since a month because my laptop is under repairing. 
kindly consider my reason , I can also verify my reason if needed.*****


DevOps Foundations Assignment: Docker, Git, and Linux

This repository contains a simple Dockerfile designed to demonstrate fundamental Linux operations within a containerized environment, serving as a practical exercise in core DevOps, Docker, and Git principles.

1. Five Core DevOps Concepts

DevOps is a set of practices that combines software development (Dev) and IT operations (Ops) to shorten the systems development life cycle and provide continuous delivery with high software quality.

Concept

Explanation

1. Continuous Integration (CI)

CI is a development practice where developers merge their code changes into a central repository frequently (e.g., several times a day). Automated builds and tests are run after each commit to immediately detect integration errors. Goal: Catch bugs early and ensure the code base is always in a working state.

2. Continuous Delivery (CD)

CD is the practice of automating the entire release process. After the CI stage is complete, the application is automatically prepared, packaged, and made ready to be deployed to a production-like environment (or even production itself, in the case of Continuous Deployment).

3. Infrastructure as Code (IaC)

The practice of managing and provisioning computing infrastructure (networks, virtual machines, load balancers, etc.) using configuration files rather than manually configuring hardware or using interactive tools. Example Tools: Terraform, Ansible.

4. Monitoring and Logging

The ongoing process of collecting, analyzing, and reporting on data about the performance and health of an application and its infrastructure. This proactive approach helps identify issues (via monitoring) and understand their root cause (via logging).

5. Microservices

An architectural style where a single application is developed as a suite of small, independent services, each running in its own process and communicating with lightweight mechanisms, often using containers. This allows teams to develop and deploy services independently.

2. Assignment Completion Steps and Terminal Commands

The following steps and commands were used to complete this assignment, from project setup to deployment on a container and pushing the source code to GitHub.

Phase 1: Project Setup and Git Initialization

Initialize the local Git repository:

git init


Add the generated files (Dockerfile and README.md):

touch Dockerfile README.md
# (Content for files added here)


Check the status of files:

git status


(Output would show Dockerfile and README.md as untracked files)

Add files to the staging area:

git add Dockerfile README.md


Commit the initial changes:

git commit -m "feat: Initial commit with Dockerfile and README for DevOps assignment"


Phase 2: Docker Build and Execution

Build the Docker image (tagging it as devops-linux-basic):

docker build -t devops-linux-basic .


(The output shows the step-by-step execution of the RUN commands in the Dockerfile)

List the local Docker images to verify the build:

docker images


Run the container to execute the CMD command:

docker run devops-linux-basic


(Output shows the execution of ls and cat commands inside the container)

Phase 3: GitHub Push

Create a new, empty repository on GitHub (e.g., named devops-assignment).

Link the local repository to the remote GitHub repository:

git remote add origin <YOUR_GITHUB_REPO_URL>


(Replace <YOUR_GITHUB_REPO_URL> with the actual URL)

Rename the default branch to main (if needed):

git branch -M main


Push the local commits to the remote GitHub repository:

git push -u origin main


3. How This Exercise Helps Learning DevOps Foundations

This small project is highly effective for foundational learning because it requires the user to integrate multiple, critical tools in a real-world workflow:

Tool/Concept

Learning Benefit

Linux

Hands-On Command Line: Writing RUN mkdir, ls -l, and cat inside the Dockerfile reinforces the understanding of basic Linux file system commands and their effect on the environment. It also introduces the sh -c shell execution model often used in container entrypoints.

Docker

Containerization Flow: This task requires understanding the distinction between Build-time commands (RUN) that create the immutable image layers, and Run-time commands (CMD) that define the application's process inside the container. It teaches the core build, tag, and run lifecycle.

Git

Version Control Workflow: The steps require using the fundamental Git flow: init (starting a project), add (staging changes), commit (saving history), remote add (linking to cloud storage), and push (sharing the work). This is the bedrock of collaborative DevOps workflows.

DevOps


Toolchain Integration: The entire assignment is a mini-DevOps pipeline. It takes code (the Linux commands/Dockerfile), packages it into an artifact (the Docker image), manages its source version (Git/GitHub), and deploys it (running the Docker container). This demonstrates the integration mindset essential to DevOps.
