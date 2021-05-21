resource "aws_s3_bucket" "test1" {
  bucket = "jake-ga-test-${terraform.workspace}"
  acl    = "private"

  tags = {
    Name        = "jake-ga-test-a"
    Environment = terraform.workspace
  }
}