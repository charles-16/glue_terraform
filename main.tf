resource "aws_s3_bucket" "Glue-test-s3" {
   bucket = "Glue-test-s3"
   acl = "public-read-write"  
}