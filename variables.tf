
variable "aws_region" {
  default = "eu-central-1"
}

variable "ami_id" {
  description = "Amazon Machine Image ID"
  default     = "ami-0c55b159cbfafe1f0"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "s3_bucket_name" {
  default = "terraform-lab-secure-bucket"
}
