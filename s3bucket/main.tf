provider "aws" {

  region = "us-east-2"

}
resource "aws_s3_bucket" "karthik" {
  bucket = "karthik.flm1"
}

resource "aws_s3_bucket_ownership_controls" "kt" {
  bucket = aws_s3_bucket.karthik.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
resource "aws_s3_bucket_acl" "kanna" {
  depends_on = [aws_s3_bucket_ownership_controls.kt]
  bucket     = aws_s3_bucket.karthik.id
  acl        = "private"
}

resource "aws_s3_bucket_versioning" "sanjay" {
  bucket = aws_s3_bucket.karthik.id
  versioning_configuration {
    status = "Enabled"
  }
}