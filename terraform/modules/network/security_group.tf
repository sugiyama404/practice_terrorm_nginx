resource "aws_security_group" "app-sg" {
  name   = "${var.app_name}-sg"
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.app_name}-sg"
  }
}
