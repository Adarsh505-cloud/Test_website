provider "aws" {
  region = "us-west-2"
}

resource "aws_security_group" "default" {
  name = "my-security-group"
  description = "A security group for my EC2 instance"
  vpc_id = "vpc-0434f51d8a18191d5"

  ingress {
    protocol = "tcp"
    port = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    protocol = "tcp"
    port = 80
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "default" {
  ami = "ami-089ffe32605122764"
  instance_type = "t2.micro"
  key_name = "af-adarsh"
  security_groups = [aws_security_group.default.id]
  subnet_id = "subnet-06b35b3d07ceec3e2"
}

