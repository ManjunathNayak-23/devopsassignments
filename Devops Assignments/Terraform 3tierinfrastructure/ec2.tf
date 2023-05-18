resource "aws_instance" "webserver" {
  instance_type               = var.instance_type
  ami                         = var.ami
  subnet_id                   = aws_subnet.pubsub1a.id
  associate_public_ip_address = var.public_ip
}