
resource "aws_security_group" "allow_tls" {
  name = "Sample-SG-Minds"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 83
    to_port     = 83
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 50
    to_port     = 50
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}