
resource "aws_subnet" "subnet-public1" {
  vpc_id     = aws_vpc.mohmadsabriterraformvpc.id
  cidr_block = var.cidr_public1
 availability_zone = var.az_zone1
  tags = {
    Name = "public1"
  }
}
resource "aws_subnet" "subnet-public2" {
  vpc_id     = aws_vpc.mohmadsabriterraformvpc.id
  cidr_block = var.cidr_public2
availability_zone = var.az_zone2
  tags = {
    Name = "public2"
  }
}
resource "aws_subnet" "subnet-private1" {
  vpc_id     = aws_vpc.mohmadsabriterraformvpc.id
  cidr_block = var.cidr_private1
 availability_zone = var.az_zone1
  tags = {
    Name = "private1"
  }
}
resource "aws_subnet" "subnet-private2" {
  vpc_id     = aws_vpc.mohmadsabriterraformvpc.id
  cidr_block = var.cidr_private2
availability_zone = var.az_zone2
  tags = {
    Name = "private2"
  }
}