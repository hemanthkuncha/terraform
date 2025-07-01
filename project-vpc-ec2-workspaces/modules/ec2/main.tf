resource "aws_instance" "myec2" {
  ami           = var.ami_id_value
  key_name      = var.key_name_value
  instance_type = var.instance_type_value
  subnet_id     = var.subnet_id

  tags = {
    Name = var.ec2_tag
  }
}
