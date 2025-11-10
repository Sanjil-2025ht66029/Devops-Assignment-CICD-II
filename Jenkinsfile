#!/usr/bin/env groovy
pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION = "us-east-1"
    }
    stages {
        stage('checkout') {
            steps {
                 script{
                        dir("terraform")
                        {
                            git "https://github.com/Sanjil-2025ht66029/Devops-Assignment-CICD-II.git"
                    }
                }
            }
        }
        stage("Deploy Myapp to EKS") {
            steps {
                script {
                    dir('kubernetes') {
                        sh "aws eks update-kubeconfig --name myapp-cluster"
                        sh "kubectl apply -f app-deployment.yaml"
                        sh "kubectl apply -f app-service.yaml"
                    }
                }
            }
        }
    }
}