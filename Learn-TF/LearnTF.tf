terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.17.0"
    }
  }
}
resource "aws_instance" "web"
{
  ami = ami-0220d79f3f480ecf5
  instance_type = "t2.micro"

  tags = {
    Name = "webSample"
  }

}