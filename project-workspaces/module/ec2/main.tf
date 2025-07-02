resource "aws_instance" "myec2" {
  ami           = var.ami_id_value
  key_name      = var.key_name_value
  instance_type = var.instance_type_value
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]

  
  user_data     = terraform.workspace == "test" ? file("${path.root}/user_data_test.sh") : null

  tags = {
    Name = var.ec2_tag
  }
}