resource "aws_nat_gateway" "natgw1" {
  allocation_id = aws_eip.eip1.id
  subnet_id     = aws_subnet.pubsub1a.id

  tags = {
    Name = "gw NAT1"
  }
  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}
resource "aws_nat_gateway" "natgw2" {
  allocation_id = aws_eip.eip2.id
  subnet_id     = aws_subnet.pubsub1b.id

  tags = {
    Name = "gw NAT2"
  }
  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}