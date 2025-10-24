terraform {
  required_version = "~> 1.13.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.17.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Environment = "Development"
      Owner       = "Terraform LocalStack Management"
    }
  }
}