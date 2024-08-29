variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "subnet_cidrs" {
  description = "List of CIDR blocks for the subnets."
  type        = list(string)
}

variable "subnet_count" {
  description = "Number of subnets to create."
  type        = number
}

variable "availability_zones" {
  description = "List of availability zones for the subnets."
  type        = list(string)
}
