terraform {
  required_version = "~> 1.13.4"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }

  backend "azurerm" {
    resource_group_name = "rg-terraform-state"
    storage_account_name = "terraformstate"
    container_name = "remote-state"
    key = "azure-vnet/terraform.tfstate"
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

provider "azurerm" {
  features {}
}