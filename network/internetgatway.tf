resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.mohmadsabriterraformvpc.id
  tags = {
    Name = "gw-terform"
  }
}