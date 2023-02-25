resource "aws_internet_gateway" "newworld-igw" {
  vpc_id  = aws_vpc.newworld.id

  tags = {
    Name = "${var.app_name}-igw"
  }
}
