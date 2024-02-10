terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
     bucket = "daws76s-remote-st"
     key    = "provisioner"
     region = "us-east-1"
     dynamodb_table = "daws76s-lock"
  }
}

provider "aws" {
  region = "us-east-1"
}