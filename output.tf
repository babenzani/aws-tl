output "vpc_id" {
  value = aws_vpc.prod-vpc.id
}

output "subnet" {
  value = aws_subnet.prod-subnet-public-1.id
}