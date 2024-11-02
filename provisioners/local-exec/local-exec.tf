resource "aws_instance" "one" {
  ami           = "ami-02ca28e7c7b8f8be1"
  instance_type = "t2.micro"
  tags = {
    name    = "instance-1"
    Env     = "dev"
    project = "swiggy"
  }
  root_block_device {
    volume_size = "10"

  }
  provisioner "local-exec" {
    command = "echo 'instance created with ID: ${aws_instance.one.id }' >> instance.txt"
   
  }
}
