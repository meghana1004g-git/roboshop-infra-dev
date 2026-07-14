terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.33.0" # Terraform aws provider version
    }
  }
  
  backend "s3" {
    bucket         = "remote-state-s3bucket-dev" #replace with your bucket name
    key            = "roboshop-dev-bastion"
    region         = "us-east-1"
    encrypt        = true
    use_lockfile   = true
  }

}

provider "aws" {
  region = "us-east-1"

}