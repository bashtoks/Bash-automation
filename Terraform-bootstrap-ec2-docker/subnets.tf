resource "aws_subnet" "testing-subnet-public" {
  vpc_id     = aws_vpc.testing-vpc.id
  cidr_block = var.publicsubnet

  tags = {
    Name = "testing-subnet-public"
  }
}

resource "aws_subnet" "testing-subnet-private" {
  vpc_id     = aws_vpc.testing-vpc.id
  cidr_block = var.privatesubnet

  tags = {
    Name = "testing-subnet-private"
  }
}