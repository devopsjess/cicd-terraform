resource "aws_security_group" "sg_hnin" {
  name   = "wutyee-allow-http-https-ssh"
  vpc_id = "vpc-07383efcd62624e8f"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "hnin"
  }
}

resource "aws_instance" "instances" {

  ami                         = "ami-0e731c8a588258d0d"
  instance_type               = "t2.micro"
  subnet_id                   = "subnet-0e5c1e5f25a775b10"
  associate_public_ip_address = true
  key_name                    = "wutyee"
  vpc_security_group_ids      = [aws_security_group.sg_hnin.id]
  tags = {
    Name = "hnin"

  }
}