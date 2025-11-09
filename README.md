# Devops-Assignment-CICD-II
This is a DevOps Assignment-II for Introduction To DevOps.

# DevOps-Assigment-CICD
Introduction to DevOps Assignment II. 

Purpose of this repo is to demonstrate the usage of Jenkins CICD, Docker, DockerHub, Terraform, Kubernetes Platform and Unit Test using PyTest Python Framework.

This is a Flask app integrated with GitHub Actions CICD for ACEest Gym Fitness.

### Jenkins CICD Workflow
Jenkins CI is triggered when the code is pushed into the main branch.

The Unit Test is also performed by the PyTest framework.

The CI Builds the image and pushes the image to DockerHub

### Build application
Build the Docker image manually by cloning the Git repo.
```
$ git clone https://github.com/Sanjil-2025ht66029/Devops-Assignment-CICD-II.git
$ docker build -t sanjilpradhan/devops-flask-app .
```

### View and Download Image from DockerHub
You can also download the existing image from [DockerHub](https://hub.docker.com/r/sanjilpradhan/devops-flask-app).
```
docker pull sanjilpradhan/devops-flask-app
```

### Run the container
Create a container from the image in port 5000
```
$ docker run --name my-container -d -p 5000:5000 sanjilpradhan/devops-flask-app
```

Now visit http://127.0.0.1:5000
```
 Hello, Welcome to the World of Gym and Fitness !!! 
```