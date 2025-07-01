locals {
  ec2_tag = lookup(var.ec2_tag, terraform.workspace, var.ec2_tag["default"])
}

locals {
  vpc_tag = lookup(var.vpc_tag, terraform.workspace, var.vpc_tag["default"])
}
