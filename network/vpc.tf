resource "aws_vpc" "mohmadsabriterraformvpc" {
  cidr_block = var.cidr
  tags = {
    Name = "iti"
  }
}