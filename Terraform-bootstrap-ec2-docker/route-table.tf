resource "aws_route_table" "testing-rt" {
  vpc_id = aws_vpc.testing-vpc.id

  route {
    cidr_block = var.anywhere
    gateway_id = aws_internet_gateway.testing-igw.id
  }


  tags = {
    Name = "testing-rt"
  }
}