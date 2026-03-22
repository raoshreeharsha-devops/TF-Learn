terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.4"
    }
  }
}
resource "aws_instance" "web" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"

  tags = {
    Name = "websample"
  }
}

resource "null_resource" "test" {

}
