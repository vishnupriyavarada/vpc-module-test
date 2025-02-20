terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }
  backend "s3" {
    bucket         = "devops82s-tf-remote-state-dev-1"
    key            = "vpc-test"
    region         = "us-east-1"
    dynamodb_table = "devops82s-tf-remote-state-dev-1"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}