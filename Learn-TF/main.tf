terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.4"
    }
  }
}
resource "aws_instance" "main" {
  ami = "ami-0220d79f3f480ecf5"
  instance_type = "t3.small"

  tags = {
    Name = "websample"
  }
}

resource "null_resource" "test" {

}
