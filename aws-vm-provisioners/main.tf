terraform {
  required_version = "~> 1.13.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.17.0"
    }
  }

  backend "s3" {
    bucket = "remote-state-bucket"
    key    = "aws-vm-provisioners/terraform.tfstate"
    region = "us-east-1"
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

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "remote-state-bucket"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }
}