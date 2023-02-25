resource "aws_security_group" "newworld-sg" {
  name = "${var.app_name}-sg"
  vpc_id = aws_vpc.newworld.id
}
