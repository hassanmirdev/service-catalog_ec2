# modules/vpc/outputs.tf

output "vpc_id" {
  description = "The ID of the created VPC"
  value       = aws_vpc.main.id
}

output "subnet_id" {
  description = "The ID of the created Subnet"
  value       = aws_subnet.subnet_1.id
}

