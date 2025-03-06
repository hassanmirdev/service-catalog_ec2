provider "aws" {
  region = var.aws_region
}

# Call the VPC module
module "vpc" {
  source          = "./modules/vpc"
  vpc_name        = var.vpc_name
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  azs             = var.azs
}
