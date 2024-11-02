resource "aws_security_group" "allow_tls" {
  name = "Sample-SG-Minds"

    dynamic "ingress" {
        for_each = var.ports
        content {
        from_port   = ingress.value
        to_port     = ingress.value
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        }
    }
    dynamic "egress" {
        for_each = var.ports
        content {
        from_port   = egress.value
        to_port     = egress.value
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        }
    }

}
variable "ports" {
  description = "this has port valus"
  type        = list(any)
  default     = [22, 80, 443, 3306]

}

