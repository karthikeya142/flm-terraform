resource "aws_instance" "one" {
  ami   = "ami-02ca28e7c7b8f8be1"
  instance_type = "t2.micro"
  tags = {
    name    = "FLM-server"
      }

    lifecycle {
        prevent_destroy = true //has lifecycle.prevent_destroy set cant do destroy
       
      }
}