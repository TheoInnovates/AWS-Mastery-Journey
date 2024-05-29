resource "aws_instance" "simple-ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public[0].id
  security_groups = [
    aws_security_group.ec2_sg.name
  ]
  key_name = var.key_name

  tags = merge(local.default_tags, {
    Name = "${local.default_tags.Name}-instance"
  })
}
