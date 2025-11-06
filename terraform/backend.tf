terraform {
  backend "s3" {
    bucket = "intro-to-devops-assignment"
    region = "us-east-1"
    key = "eks/terraform.tfstate"
  }
}