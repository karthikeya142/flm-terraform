resource "aws_instance" "one" {
  ami           = "ami-0e0bf53f6def86294"
  instance_type = "t2.micro"
  key_name      = "docker"
  tags = {
    name    = "instance-1"
    Env     = "dev"
    project = "swiggy"
  }
  root_block_device {
    volume_size = "10"
  }

  provisioner "file" {

    connection {
      type        = "ssh"
      user        = "ec2-user"
      host        = self.public_ip
      private_key = file("./docker.pem")
    }
    source      = "flm.log"
    destination = "flm.log"

  }

}