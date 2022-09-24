resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.lab1.id
  cidr_block = var.subnetpc1_cidr
  #"10.0.0.0/24"
  availability_zone = "${var.region}a"

  tags = {
    Name = "Public1"
  }
}

resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.lab1.id
  cidr_block = var.subnetpv1_cidr
  #"10.0.1.0/24"
  availability_zone = "${var.region}a"

  tags = {
    Name = "Private1"
  }
}

resource "aws_subnet" "Public2" {
  vpc_id     = aws_vpc.lab1.id
  cidr_block = var.subnetpc2_cidr
  #"10.0.2.0/24"
  availability_zone = "${var.region}b"
  #"us-east-1b"

  tags = {
    Name = "Public2"
  }
}

resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.lab1.id
  cidr_block = var.subnetpv2_cidr
  #"10.0.3.0/24"
  availability_zone = "${var.region}b"

  tags = {
    Name = "Private2"
  }
}
