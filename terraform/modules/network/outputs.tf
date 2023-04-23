output "security-group-id" {
  value = aws_security_group.app-sg.id
}

output "subnet-public-1a-id" {
  value = aws_subnet.public-1a.id
}
