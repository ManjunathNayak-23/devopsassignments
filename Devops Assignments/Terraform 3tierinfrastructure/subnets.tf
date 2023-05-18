resource "aws_subnet" "pubsub1a" {
  vpc_id            = aws_vpc.tierdemo.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = var.availability_zone1
  tags = {
    Name = "pubsub1a"
  }
}
resource "aws_subnet" "pubsub1b" {
  vpc_id            = aws_vpc.tierdemo.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = var.availability_zone1
  tags = {
    Name = "pubsub1b"
  }
}

resource "aws_subnet" "prisub2a" {
  vpc_id            = aws_vpc.tierdemo.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = var.availability_zone1
  tags = {
    Name = "prisub2a"
  }
}
resource "aws_subnet" "prisub2b" {
  vpc_id            = aws_vpc.tierdemo.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = var.availability_zone2
  tags = {
    Name = "prisub2b"
  }
}
resource "aws_subnet" "prisub3a" {
  vpc_id            = aws_vpc.tierdemo.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = var.availability_zone2
  tags = {
    Name = "prisub3a"
  }
}
resource "aws_subnet" "prisub3b" {
  vpc_id            = aws_vpc.tierdemo.id
  cidr_block        = "10.0.6.0/24"
  availability_zone = var.availability_zone2

  tags = {
    Name = "prisub3b"
  }
}