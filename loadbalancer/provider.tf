provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "karthk" {
  //availability_zone = aws_subnet.two.id
  subnet_id     = aws_subnet.mysubnet-1.id
  key_name        = "docker"
  ami           = "ami-02ca28e7c7b8f8be1"
  instance_type = "t2.micro"
  tags = {
    Name = "instance-1"

  }
}