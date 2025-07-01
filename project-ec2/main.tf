provider "aws" {
  region = "ap-south-1"
}

module "ec2" {
  source              = "./module/ec2"
  ami_id_value        = var.ami_id_value
  instance_type_value = var.instance_type_value
  key_name_value      = var.key_name_value
  ec2_tag             = var.ec2_tag
}