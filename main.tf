
provider "aws" {
  region  = var.aws_region
}

resource "aws_instance" "web_server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "MyTerraformEC2"
  }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.s3_bucket_name
  acl    = "private"
}

resource "aws_cloudtrail" "my_trail" {
  name                          = "my-security-trail"
  s3_bucket_name                = aws_s3_bucket.my_bucket.id
  include_global_service_events = true
  is_multi_region_trail         = true
  enable_logging                = true
}

resource "aws_iam_role" "ec2_role" {
  name = "ec2_basic_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Effect = "Allow",
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
  })
}
