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