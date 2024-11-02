resource "aws_instance" "one" {
  ami           = "ami-02ca28e7c7b8f8be1"
  instance_type = "t2.micro"
  tags = {
    name    = "instance-1"
    Env     = "dev"
    project = "swiggy"
  }
 root_block_device {
   volume_size =  "10"
   //volume_type =  "ebs"
 }
}

resource "aws_s3_bucket" "twp" {
  bucket = "karthik.flm"
}

//to know  how many are on list :  terraform state list
// to run this command  to delete the offline things  instead of  terraform apply -refresh-only