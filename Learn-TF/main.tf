resource "aws_instance" "test_loop" {
  count = 5
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-00e30f54573caca07"]

  tags = {
    Name = var.components[count.index]
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_route53_record" "test_dns" {
  count = 5
  name    = var.components[count.index]
  type    = "A"
  zone_id = "Z0201776NY87AL3MW923"
  ttl = 30
  records = [aws_instance.test_loop[count.index].private_ip]
  #record
}

