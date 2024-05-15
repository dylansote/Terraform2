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

module "network" {
  source   = "./modules/network"
  vpc_name = "Main VPC"
}

module "instance1" {
  source = "./modules/instances"
  instance_name = "Instance1"
  instance_type = "t2.micro"
  subnet_id = module.network.subnet1_id
}

module "instance2" {
  source = "./modules/instances"
  instance_name = "Instance2"
  instance_type = "t2.micro"
  subnet_id = module.network.subnet2_id
}