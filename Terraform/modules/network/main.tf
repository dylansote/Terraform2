//generico
//creamos una vpc, ip provada
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = var.vpc_name
  }
}

module "subnet1" {
  source = "../subnet"
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
}

module "subnet2" {
  source = "../subnet"
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"
}