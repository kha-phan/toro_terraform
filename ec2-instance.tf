# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "ap-southeast-1"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-091a58610910a87a9" # Amazon Linux 2023 AMI 2023.1.20230809.0 x86_64 HVM kernel-6.1
  instance_type = "t2.micro"
}
