resource "aws_instance" "main" {
  count = 5
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-00e30f54573caca07"]

  tags = {
    Name = "EC2_${var.components[count.index]}"
  }
}

provider "aws" {
  region = "us-east-1"
}