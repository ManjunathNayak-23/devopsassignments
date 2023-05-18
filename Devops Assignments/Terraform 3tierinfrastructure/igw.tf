resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.tierdemo.id

  tags = {
    Name = "igw"
  }
}