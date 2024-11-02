resource "aws_instance" "one" {
  ami   ="ami-01387af90a62e3c01"  // "ami-02ca28e7c7b8f8be1"
  instance_type = "t2.micro"
  tags = {
    name    = "FLM-server"
      }

    lifecycle {
       create_before_destroy = true //first create the instance and delete old instance 
      }
}