variable "main_region" {
  type    = string
  default = "us-east-1"
}

module "vpc" {
  source = "./modules/vpc"
  region = var.main_region
}

resource "aws_instance" "my-instance" {
  ami           = module.vpc.ami_id
  subnet_id     = module.vpc.subnet_id
  instance_type = "t2.micro"
}

provider "aws" {
  region = var.main_region
}

terraform {
    required_version = "~> 1.0.0"
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.49.0"
        }
    }
}