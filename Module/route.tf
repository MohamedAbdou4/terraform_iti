resource "aws_route_table" "Route1" {
  vpc_id = aws_vpc.lab1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw_lab1.id
  }


  tags = {
    Name = "Route-Public"
  }
}

resource "aws_route_table_association" "RP1" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.Route1.id
}

resource "aws_route_table_association" "RP2" {
  subnet_id      = aws_subnet.Public2.id
  route_table_id = aws_route_table.Route1.id
}




resource "aws_route_table" "Route2" {
  vpc_id = aws_vpc.lab1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.NATgw.id
  }


  tags = {
    Name = "Route-private"
  }
}

resource "aws_route_table_association" "RPv1" {
  subnet_id      = aws_subnet.private1.id
  route_table_id = aws_route_table.Route2.id
}

resource "aws_route_table_association" "RPv2" {
  subnet_id      = aws_subnet.private2.id
  route_table_id = aws_route_table.Route2.id
}
