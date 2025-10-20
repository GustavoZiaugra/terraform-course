variable "location" {
  description = "Value of the location"
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Value of the resource group name"
  type        = string
  default     = "rg-terraform-localstack-management"
}

variable "account_tier" {
  description = "Value of the account tier"
  type        = string
  default     = "Standard"
}

variable "container_name" {
  description = "Value of the container name"
  type        = string
  default     = "terraform-localstack-management"
}

variable "storage_account_name" {
  description = "Value of the storage account name"
  type        = string
  default     = "stterraformlocalstackmanagement"
}