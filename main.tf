provider "aws" {
  region = "us-east-1"
}


/*
resource "aws_instance" "minha_ec2" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 (free tier)
  instance_type = "t2.micro"

  tags = {
    Name = "MinhaEC2Terraform"
  }
} */

resource "aws_s3_bucket" "meu_bucket" {
  bucket = "meu-bucket-ezequiel-123456"

  tags = {
    Name        = "Bucket Terraform"
    Environment = "dev"
  }
}

resource "aws_s3_bucket_public_access_block" "block" {
  bucket = aws_s3_bucket.meu_bucket.id

  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls  = true
  restrict_public_buckets = true
}

