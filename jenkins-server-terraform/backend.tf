terraform {
  backend "s3" {
    bucket = "myapp-jenkins-config"
    region = "us-east-1"
    key = "jenkins-server/terraform.tfstate"
  }
}