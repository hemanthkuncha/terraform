output "public_ip" {
  value = aws_instance.myec2.public_ip
}

output "private_ip" {
  value = aws_instance.myec2.private_ip
}

output "public_dns" {
  value = aws_instance.myec2.public_dns
}

output "instance_name" {
  description = "The Name tag of the EC2 instance"
  value       = aws_instance.myec2.tags["Name"]
}
