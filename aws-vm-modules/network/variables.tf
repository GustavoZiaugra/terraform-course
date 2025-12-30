variable "cidr_vpc" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "cidr_subnet" {
  description = "The CIDR block for the Subnet"
  type        = string
}

variable "env" {
  description = "The environment for tagging purposes"
  type        = string
}
