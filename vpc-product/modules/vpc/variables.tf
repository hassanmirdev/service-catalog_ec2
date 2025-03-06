# modules/vpc/variables.tf

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Name for the VPC"
  type        = string
  default     = "MainVPC"
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "subnet_name" {
  description = "Name for the subnet"
  type        = string
  default     = "Subnet-1"
}

variable "availability_zone" {
  description = "The availability zone to launch the subnet in"
  type        = string
  default     = "us-east-1a"
}

variable "map_public_ip_on_launch" {
  description = "Whether to assign public IP addresses to instances launched in the subnet"
  type        = bool
  default     = true
}

