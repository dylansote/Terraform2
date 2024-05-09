terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_vpc" "main2" {
  cidr_block       = "10.1.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = var.vpc_name2
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "Subnet1"
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id     = aws_vpc.main2.id
  cidr_block = "10.1.1.0/24"
  tags = {
    Name = "Subnet2"
  }
}

resource "aws_instance" "instance1" {
  ami           = "ami-07caf09b362be10b8"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnet1.id
  tags = {
    Name = var.instance_name
  }
}

resource "aws_instance" "instance2" {
  ami           = "ami-07caf09b362be10b8"
  instance_type = "t2.nano"
  subnet_id     = aws_subnet.subnet2.id
  tags = {
    Name = var.instance_name2
  }
}