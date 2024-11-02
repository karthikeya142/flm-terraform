/*provider "aws" {
  region = "us-east-2"
}
resource "aws_vpc" "one" {
  tags = { Name = "terraform-vpc"
  }
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_hostnames = "true"
}

resource "aws_subnet" "two" {
  vpc_id = aws_vpc.one.id
  tags = {
    Name              = "terraform-subnet"
      }
      availability_zone = "us-east-2b"
          cidr_block        = "10.0.0.0/16"
}
resource "aws_internet_gateway" "three" {
  vpc_id = aws_vpc.one.id
  tags = {
    name = "terraform-igw"
  }
}

resource "aws_route_table" "four" {
  tags = {
    name = "terraform-rt"
  }
  vpc_id = aws_vpc.one.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.three.id
  }
}*/