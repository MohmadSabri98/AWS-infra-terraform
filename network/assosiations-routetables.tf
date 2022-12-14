
resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.subnet-public1.id
  route_table_id = aws_route_table.public-internet-route-table.id
}
resource "aws_route_table_association" "public2" {
  subnet_id      = aws_subnet.subnet-public2.id
  route_table_id = aws_route_table.public-internet-route-table.id
}




resource "aws_route_table_association" "private1" {
  subnet_id      = aws_subnet.subnet-private1.id
  route_table_id = aws_route_table.private-internet-route-table.id
}
resource "aws_route_table_association" "private2" {
  subnet_id      = aws_subnet.subnet-private2.id
  route_table_id = aws_route_table.private-internet-route-table.id
}
  