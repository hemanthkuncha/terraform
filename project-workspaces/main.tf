provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source               = "./module/vpc"
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  enable_dns_hostnames = var.enable_dns_hostnames
  vpc_tag              = local.vpc_tag
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

module "ec2" {
  source              = "./module/ec2"
  ami_id_value        = var.ami_id_value
  instance_type_value = var.instance_type_value
  key_name_value      = var.key_name_value
  ec2_tag             = local.ec2_tag
  security_group_id   = module.vpc.security_group_id

  # 👇 Connect the VPC to EC2 by passing subnet
  subnet_id = module.vpc.public_subnet_ids[0]
}

output "ec2_public_ip" {
  value = module.ec2.public_ip
}

resource "null_resource" "prod_exec" {
  count = terraform.workspace == "prod" ? 1 : 0

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("C:/Users/hemanth/PASS.pem")
    host        = module.ec2.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt -y update",
      "sudo apt install -y git",
      "sudo apt install -y apache2",
      "sudo systemctl start apache2",
      "sudo systemctl enable apache2",
      "sudo rm -rf /var/www/html/",
      "sudo git clone https://github.com/Akiranred/ecomm.git /var/www/html"
    ]
  }

  depends_on = [module.ec2]
}
