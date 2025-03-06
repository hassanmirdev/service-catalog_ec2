provider "aws" {
  region = "us-east-1"  # Choose the region where you want to create resources
}

module "vpc" {
  source             = "./modules/vpc"
  cidr_block        = "10.0.0.0/16"
  vpc_name          = "MyVPC"
  subnet_cidr_block = "10.0.1.0/24"
  subnet_name       = "MySubnet"
  availability_zone = "us-east-1a"
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_id" {
  value = module.vpc.subnet_id
}
