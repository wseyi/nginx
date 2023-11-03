resource "aws_instance" "nginx_server" {
  ami           = var.ami
  instance_type = var.instance_type

  # key_name = "server"

  tags = {
    Name = "nginx_server"
  }
}

resource "aws_key_pair" "tf-key" {
  key_name   = "tf-key"
  public_key = tls_private_key.rsa.public_key_openssh
}

resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "tf-key" {
  content  = tls_private_key.rsa.private_key_pem
  filename = "tfkey"
}