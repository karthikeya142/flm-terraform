provider "aws" {

  region = "us-east-2"

}
resource "aws_instance" "one" {
  ami           = "ami-022661f8a4a1b91cf"
  instance_type = "t2.micro"
  tags          = var.itags
}
variable "itags" {
  type = map(string)
  default = {
    Name       = "flm-instance"
    project     = "ltim"
    Environment = "dev"
    //"${terraform.workspace}-instance"
    
  }

}
output "two" {
  value = [aws_instance.one.public_ip, aws_instance.one.private_ip, aws_instance.one.public_dns, ]
}