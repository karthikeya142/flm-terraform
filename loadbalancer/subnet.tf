resource "aws_subnet" "mysubnet-1" {
  vpc_id            = aws_vpc.my-vpc.id
  availability_zone = "us-east-2a"
  tags = {
    name = "subnet-1"
  }
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
}

resource "aws_subnet" "mysubnet-2" {
  vpc_id            = aws_vpc.my-vpc.id
  availability_zone = "us-east-2b"
  tags = {
    name = "subnet-2"
  }
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = "true"
}