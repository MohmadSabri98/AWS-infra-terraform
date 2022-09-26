
output "vpc_id" {
  value = aws_vpc.mohmadsabriterraformvpc.id
}

output "public1_id" {
  value = aws_subnet.subnet-public1.id
}

output "public2_id" {
  value = aws_subnet.subnet-public2.id
}

output "private1_id" {
  value = aws_subnet.subnet-private1.id
}

output "private2_id" {
  value = aws_subnet.subnet-private2.id
}
