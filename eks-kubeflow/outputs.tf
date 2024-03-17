output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

# output "wg_security_group_id" {
#   description = "The ID of the security group"
#   value       = resource.aws_security_group.wireguard_sg.id
# }
