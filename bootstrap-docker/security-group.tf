resource "aws_security_group" "testing-sg" {
  name        = "testing-sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.testing-vpc.id

  ingress {
    description      = "TLS from VPC"
    from_port        = var.ssh
    to_port          = var.ssh
    protocol         = "tcp"
    cidr_blocks      = [var.anywhere]
    ipv6_cidr_blocks = []
  }

  ingress {
    description      = "for Jenkins"
    from_port        = "8080"
    to_port          = "8080"
    protocol         = "tcp"
    cidr_blocks      = [var.anywhere]
    ipv6_cidr_blocks = []
  }


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = [var.anywhere]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "testing-sg"
  }
}

