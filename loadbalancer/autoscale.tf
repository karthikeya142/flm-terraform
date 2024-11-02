resource "aws_autoscaling_group" "autoscale" {
  name                 = "myasg"
  launch_configuration = aws_launch_configuration.one.name
  max_size             = 3
  min_size             = 2
  desired_capacity     = 2
  health_check_type    = "EC2"
  load_balancers       = [aws_elb.myelb.name]
  vpc_zone_identifier  = [aws_subnet.mysubnet-1.id, aws_subnet.mysubnet-2.id]

}