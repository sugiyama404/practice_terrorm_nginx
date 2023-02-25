resource "aws_route_table" "newworld-public-1a-rt" {
  vpc_id  = aws_vpc.newworld.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.newworld-igw.id
  }
  tags = {
    Name = "${var.app_name}-igw"
  }
}

resource "aws_route_table_association" "puclic-1a" {
  subnet_id      = aws_subnet.newworld-public-1a.id
  route_table_id = aws_route_table.newworld-public-1a-rt.id
}

