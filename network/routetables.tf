resource "aws_route_table" "public-internet-route-table" {
  vpc_id = aws_vpc.mohmadsabriterraformvpc.id

    route {
    cidr_block= "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  route {
    ipv6_cidr_block        = "::/0"
    egress_only_gateway_id = aws_egress_only_internet_gateway.nat-gatway-ipv6.id
  }

  tags = {
    Name = "rt-public-sb"
  }
}




resource "aws_route_table" "private-internet-route-table" {
  vpc_id = aws_vpc.mohmadsabriterraformvpc.id

    route {
    cidr_block= "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat-terrform.id
  }

  tags = {
    Name = "rt-private-subnets"
  }
}


