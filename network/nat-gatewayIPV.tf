resource "aws_egress_only_internet_gateway" "nat-gatway-ipv6" {
  vpc_id = aws_vpc.mohmadsabriterraformvpc.id

  tags = {
    Name = "nat-IPV6"
  }
}