resource "aws_instance" "this" {
  ami           = "ami-07caf09b362be10b8" 
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  tags = {
    Name = var.instance_name
  }
}