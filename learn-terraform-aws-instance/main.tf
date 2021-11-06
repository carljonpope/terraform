terraform {

  backend "remote" {
      organization = "thevatican"
      workspaces {
          name = "test2"
      }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "eu-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0d26eb3972b7f8c96"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}

