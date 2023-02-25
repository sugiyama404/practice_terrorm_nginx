resource "aws_subnet" "newworld-public-1a" {
  vpc_id                  = aws_vpc.newworld.id
  cidr_block              = "10.0.0.0/25"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.app_name}-public-1a"
  }
}
