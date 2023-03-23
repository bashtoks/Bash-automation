data "template_file" "ec2_user_data" {
  template = file("${path.module}/dockerinstall.sh")
}



resource "aws_instance" "testing-ec2" {
  ami                         = "ami-00874d747dde814fa"
  instance_type               = var.instance
  vpc_security_group_ids      = [aws_security_group.testing-sg.id]
  subnet_id                   = aws_subnet.testing-subnet-public.id
  associate_public_ip_address = true
  user_data                   = data.template_file.ec2_user_data.template

  tags = {
    Name = "testing-ec2"
  }
}