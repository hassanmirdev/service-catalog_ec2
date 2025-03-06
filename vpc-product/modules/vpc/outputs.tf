output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.scvpc.id
}

output "public_subnets" {
  description = "List of public subnet IDs"
  value       = aws_subnet.public[*].id
}

