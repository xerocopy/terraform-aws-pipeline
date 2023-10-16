terraform {
  required_version = ">= 0.12"
}


provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "terraform_state" {
  bucket        = "tmtwebsitehost-tf-state-bucket-jcs-23"
  acl           = "private"
  force_destroy = true

  tags = {
    Name        = "My bucket"
    Environment = var.env_name
  }
}
