resource "aws_internet_gateway" "testing-igw" {
  vpc_id = aws_vpc.testing-vpc.id

  tags = {
    Name = "testing-vpc"
  }
}