terraform {
  backend "s3" {
    bucket = "intro-to-devops-assignment-2"
    region = "us-east-1"
    key = "eks/terraform.tfstate"
  }
}