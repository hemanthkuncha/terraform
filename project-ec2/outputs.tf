output "my_ec2_public_ip" {
  value = module.ec2.public_ip
}

output "my_ec2_private_ip" {
  value = module.ec2.private_ip
}

output "my_ec2_public_dns" {
  value = module.ec2.public_dns
}

output "my_ec2_instance_name" {
  value = module.ec2.instance_name
}