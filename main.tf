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

resource "aws_instance" "web" {
  ami           = "ami-083b3f53cbda7e5a4"
  instance_type = "t2.micro"

  tags = {
    Name = "SimpleWebServer"
  }
}
