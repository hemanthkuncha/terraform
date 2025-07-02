provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
<<<<<<< HEAD
  source             = "./modules/vpc"
  vpc_cidr           = "10.10.0.0/16"
  public_subnet_cidrs = ["10.10.1.0/24", "10.10.2.0/24"]
=======
  source               = "./modules/vpc"
  vpc_cidr             = "10.10.0.0/16"
  public_subnet_cidrs  = ["10.10.1.0/24", "10.10.2.0/24"]
>>>>>>> 2e310a8 (Initial commit)
  enable_dns_hostnames = true
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}