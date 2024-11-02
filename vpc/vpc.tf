/*
resource "aws_vpc" "one" {
  tags = {
    Name = "terraform-vpc"
  }
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_hostnames = "true"
}
resource "aws_subnet" "two" {
  vpc_id = aws_vpc.one.id
  tags = {
    Name = "terraform-subnet"
  }
  availability_zone = "us-east-2a"
  cidr_block        = "10.0.0.0/16"
}

resource "aws_internet_gateway" "three" {
  tags = {
    Name = "terraform-igw"
  }
  vpc_id = aws_vpc.one.id

}
resource "aws_route_table" "four" {
  tags = {
    Name = "terraform-rt"
  }
  vpc_id = aws_vpc.one.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.three.id
  }
}*/