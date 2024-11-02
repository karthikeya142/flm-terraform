provider "aws" {

  region = "us-east-2"

}
resource "aws_instance" "one" {
  ami           = "ami-022661f8a4a1b91cf"
  instance_type = "t2.micro"
  tags = {
    name = "terraform instance"
  }
  count = var.abc ? 2 : 1

}

variable "abc" {
  type    = bool
  default = false
}