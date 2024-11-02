resource "aws_vpc" "my-vpc" {
  tags = {
    Name = "my-vpc"
  }
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_hostnames = "true"

}