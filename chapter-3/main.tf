resource "aws_instance" "vm" {
  ami           = var.ami
  subnet_id     = var.subnet_id
  instance_type = "t3.micro"
  tags = {
    Name = "my-first-tf-node"
  }
}

provider "aws" {
  region = "us-east-1"
}

terraform {
    required_version = "~> 1.0.0"
    required_providers {
      aws = {
        source  = "hashicorp/aws"
        version = "~> 3.0" 
      }
    }
}
