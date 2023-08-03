provider "aws" {
  region = "us-west-2"
}


resource "aws_instance" "default" {
  ami = "ami-089ffe32605122764"
  instance_type = "t2.micro"
  key_name = "af-adarsh"
  security_groups = ["sg-0c6c3f7c75ba8425b"]
  subnet_id = "subnet-06b35b3d07ceec3e2"
}

