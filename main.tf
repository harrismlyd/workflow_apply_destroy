resource "aws_s3_bucket" "lambda_bucket" {
  bucket = "ce8-harris"
  force_destroy = true
}

terraform {
  backend "s3" {
    bucket = "sctp-ce8-tfstate"
     key    = "harris3.1.tfstate"
    region = "ap-southeast-1"
  }
}