terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.54.1"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "new-buvketttt" {
  bucket = "y-new-buckk-abubaqar-20251031"
}
resource "aws_s3_object" "buck-data" {
  bucket = aws_s3_bucket.new-buvketttt.bucket
  source = "./basic.txt"
  key = "key.txt"
}

