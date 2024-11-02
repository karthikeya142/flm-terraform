resource "aws_elb" "myelb" {
  name            = "terraform-lb"
  security_groups = [aws_security_group.mysg.id]
  subnets         = [aws_subnet.mysubnet-1.id, aws_subnet.mysubnet-2.id]
  listener {
    instance_port     = 8080
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
  tags = {
  name = "terraform-lb"
}
}