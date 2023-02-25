output "security-group-id" {
  value = aws_security_group.newworld-sg.id
}

output "subnet-public-1a-id" {
  value = aws_subnet.newworld-public-1a.id
}
