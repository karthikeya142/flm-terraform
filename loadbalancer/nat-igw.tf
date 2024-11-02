/*resource "aws_nat_gateway" "natigw" {
  subnet_id = aws_subnet.mysubnet-2.id
  tags = {
    name = "mynatigw"
  }
}
resource "aws_route_table_association" "subnet-2" {
  subnet_id      = aws_subnet.mysubnet-2.id
  route_table_id = aws_route_table.myrt.id
}
*/
