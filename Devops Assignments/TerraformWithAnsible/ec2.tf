resource "aws_instance" "web" {
  ami                         = var.ami_id
  subnet_id                   = var.subnet_id
  instance_type               = var.instance_type
  associate_public_ip_address = true
  security_groups             = [aws_security_group.web.id]
  key_name                    = var.keyname

  provisioner "remote-exec" {
    inline = ["echo 'Wait until SSH is ready'"]

    connection {
      type        = "ssh"
      user        = var.user
      private_key = file("C:/Users/Manjunath Nayak/Downloads/working.pem")
      host        = aws_instance.web.public_ip
    }
  }
  provisioner "local-exec" {
    command = "ansible-playbook  -i ${aws_instance.web.public_ip}, --private-key ${var.private_key_path} master.yml"
  }
  tags = {
    "Name" = "webserver"
  }
}
