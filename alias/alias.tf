provider "aws" {

  region = "us-east-1"

}
resource "aws_instance" "karthk" {
  ami           = "ami-04ff98ccbfa41c9ad"
  instance_type = "t2.micro"
  tags = {
    Name = "instance-1"
  }

  //vpc_security_group_ids = [aws_security_group.three.id]
}

provider "aws" {

  region = "ap-south-1"
  alias  = "mumbai"

}
resource "aws_instance" "two" {
  provider      = "aws.mumbai"
  ami           = "ami-04ff98ccbfa41c9ad"
  instance_type = "t2.micro"
  tags = {
    Name = "instance-2"
  }
}
