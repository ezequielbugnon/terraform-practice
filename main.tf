provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "minha_ec2" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 (free tier)
  instance_type = "t2.micro"

  tags = {
    Name = "MinhaEC2Terraform"
  }
}