resource "aws_vpc" "lab1" {
  cidr_block = var.vpc_cidr #"10.0.0.0/16"
  tags = {
    Name = "lab1"
  }
}
