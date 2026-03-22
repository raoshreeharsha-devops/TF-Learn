terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.17.0"
    }
  }
}
resource "aws_instance" "main" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"

  tags = {
    Name = "websample"
  }
}

resource "aws_connect_security_profile" "SGTest" {
  instance_id = "sg-00e30f54573caca07"
  name        = "AllAllow"
}

provider "aws" {
  region = "us-east-1"
}