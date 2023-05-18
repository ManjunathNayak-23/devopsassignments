resource "aws_eip" "eip1" {
  vpc = true
  tags = {
    Name = "eip1"
  }

}
resource "aws_eip" "eip2" {
  vpc = true

  tags = {
    Name = "eip2"
  }


}