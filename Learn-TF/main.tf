resource "aws_instance" "test" {
  count = var.instance_cnt
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-00e30f54573caca07"]

  tags = {
    Name = var.instance_name
  }
}

provider "aws" {
  region = "us-east-1"
}

