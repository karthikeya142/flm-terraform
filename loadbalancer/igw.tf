resource "aws_internet_gateway" "myigw" {
  vpc_id = aws_vpc.my-vpc.id
  tags = {
    name = "myigw"
  }

}
resource "aws_route_table_association" "subnet-1" {
  subnet_id      = aws_subnet.mysubnet-1.id
  route_table_id = aws_route_table.myrt.id
}

resource "aws_route_table_association" "subnet-2" {
  subnet_id      = aws_subnet.mysubnet-2.id
  route_table_id = aws_route_table.myrt.id
}