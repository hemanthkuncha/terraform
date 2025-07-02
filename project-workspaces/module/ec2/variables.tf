variable "ami_id_value" {
  description = "ami id value"
  type = string
}

variable "key_name_value" {
  description = "ec2 keypair value"
  type = string
}

variable "instance_type_value" {
  description = "ec2 instance type"
  type = string
}

variable "ec2_tag" {
  type = string
}

variable "subnet_id" {
  description = "Subnet ID to launch the EC2 instance in"
  type        = string
}

variable "security_group_id" {
  description = "ID of the security group to attach to EC2"
  type        = string
}
