resource "aws_s3_bucket" "Glue-test-s3" {
   bucket = "glue-cj-src11-s3"
   tags = {
     Name           = "cj-buck-src"
     Environment    = "dev"
   }
}
