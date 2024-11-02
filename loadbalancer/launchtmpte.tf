resource "aws_launch_configuration" "one" {
  image_id        = "ami-02ca28e7c7b8f8be1"
  instance_type   = "t2.micro"
  key_name        = "docker"
  security_groups = [aws_security_group.mysg.id]

  user_data = <<-EOF
      #!/bin/bash
      sudo yum install -y
      sudo yum install httpd -y
      sudo systemctl start httpd
      sudo systemctl enable httpd
      sudo systemctl restart httpd
      sudo chmod 766 /var/www/html/index.html
      sudo echo "<html><body><h1>welcome to terraform scaling.</h1></body></html>" >/var/www/html/index.html
      EOF

}
