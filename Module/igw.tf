resource "aws_internet_gateway" "gw_lab1" {
  vpc_id = aws_vpc.lab1.id

  tags = {
    Name = "igw"
  }
}

