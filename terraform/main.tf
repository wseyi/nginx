resource "aws_instance" "nginx_server" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "nginx_server"
  }
}