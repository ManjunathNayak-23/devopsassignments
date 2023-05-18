#public route table
resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.tierdemo.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public-rt"
  }
}
#private route table
resource "aws_route_table" "private-rt1a" {
  vpc_id = aws_vpc.tierdemo.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natgw1.id
  }

  tags = {
    Name = "private-rt1a"
  }
}
resource "aws_route_table" "private-rt1b" {
  vpc_id = aws_vpc.tierdemo.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natgw2.id
  }


  tags = {
    Name = "private-rt1b"
  }
}



resource "aws_route_table_association" "private-association-1a" {
  subnet_id      = aws_subnet.prisub2a.id
  route_table_id = aws_route_table.private-rt1a.id
}

resource "aws_route_table_association" "private-association-1b" {
  subnet_id      = aws_subnet.prisub2b.id
  route_table_id = aws_route_table.private-rt1b.id
}


resource "aws_route_table_association" "public-association-1a" {
  subnet_id      = aws_subnet.pubsub1a.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "public-association-1b" {
  subnet_id      = aws_subnet.pubsub1b.id
  route_table_id = aws_route_table.public-rt.id
}