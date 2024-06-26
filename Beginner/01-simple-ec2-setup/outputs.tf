output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "instance_id" {
  value = aws_instance.simple-ec2.id
}

output "instance_public_ip" {
  value = aws_instance.simple-ec2.public_ip
}
