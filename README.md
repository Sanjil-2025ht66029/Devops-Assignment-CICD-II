# Devops-Assignment-CICD-II
This is a DevOps Assignment-II for Introduction To DevOps.

# DevOps-Assigment-CICD
Introduction to DevOps Assignment II. 

Purpose of this repo is to demonstrate the usage of Jenkins CICD, Docker, ECR Registry, Terraform, AWS EKS Platform and Unit Test using PyTest Python Framework.

This is a Flask app integrated with Jenkins CICD for ACEest Fitness. Gym

### Jenkins CICD Workflow
Jenkins CI is triggered when the code is pushed into the main branch.

The Unit Test is also performed by the PyTest framework.

The CI Builds the image and pushes the image to ECR Registry.

Then the new version is deployed in the EKS cluster.

### Build application
Accessible Endpoint: 
http://ae4c6469c77de4c44996fa190649d43e-1040315853.us-east-1.elb.amazonaws.com


Build the Docker image manually by cloning the Git repo.
```
$ git clone https://github.com/Sanjil-2025ht66029/Devops-Assignment-CICD-II.git
$ cd application
$ docker build -t sanjilpradhan/devops-flask-app .
```