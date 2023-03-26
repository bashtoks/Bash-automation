resource "aws_route_table_association" "testing-rt-assoc" {
  subnet_id      = aws_subnet.testing-subnet-public.id
  route_table_id = aws_route_table.testing-rt.id
}
