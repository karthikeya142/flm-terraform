provider "aws" {

  region = "us-east-2"

}
resource "aws_instance" "karthk" {

  ami           = "ami-02ca28e7c7b8f8be1"
  instance_type = "t2.micro"
  tags = {
    Name = "instance-1"
  }

  //vpc_security_group_ids = [aws_security_group.three.id]




}

