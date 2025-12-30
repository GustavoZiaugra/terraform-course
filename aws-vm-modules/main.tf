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
    key    = "aws-vm-modules/terraform.tfstate"
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

module "network" {
  source = "./network"

  env         = "dev"
  cidr_vpc    = "10.0.0.0/16"
  cidr_subnet = "10.0.1.0/24"
}