variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "List of CIDRs for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames in the VPC"
  type        = bool
  default     = true
}

variable "ami_id_value" {
  description = "ami id value"
  type        = string
}

variable "key_name_value" {
  description = "ec2 keypair value"
  type        = string
}

variable "instance_type_value" {
  description = "ec2 instance type"
  type        = string
}

variable "ec2_tag" {
  description = "Map of EC2 tags by workspace"
  type        = map(string)

  default = {
    default = "Default-EC2"
    dev     = "Dev-Server"
    test    = "Test-Server"
    prod    = "Prod-Server"
  }
}

variable "vpc_tag" {
  description = "VPC Name tag based on workspace"
  type        = map(string)

  default = {
    default = "default-vpc"
    dev     = "dev-vpc"
    test    = "test-vpc"
    prod    = "prod-vpc"
  }
}

variable "availability_zones" {
  type    = list(string)
  default = ["ap-south-1a", "ap-south-1b"]
}