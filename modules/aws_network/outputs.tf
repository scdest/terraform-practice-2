output "gateway_ip" {
  value = aws_nat_gateway.nat.public_ip
}

output "subnet_id" {
  value = aws_subnet.private_subnet.id
}