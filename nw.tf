provider "aws" {

  region = "us-east-2"

}
resource "aws_instance" "karthk" {

  ami           = "ami-02ca28e7c7b8f8be1"
  instance_type = "t2.micro"
  tags = {
    Name = "instance-1"
  }

  vpc_security_group_ids = [aws_security_group.three.id]




}


provider "aws" {

  region = "ap-south-1"
  alias  = "mumbai"

}
/*resource "aws_instance" "two" {
 
    provider = "aws.mumbai"
    ami = "ami-0e670eb768a5fc3d4"
    instance_type = "t2.micro"
    tags = {
       Name   = "instance-2"
          }
   
  
}*/