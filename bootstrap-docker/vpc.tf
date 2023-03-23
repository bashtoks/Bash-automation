resource "aws_vpc" "testing-vpc" {
  cidr_block = var.vpc-cidr

  tags = {
    Name = var.vpc-tag
  }
}
