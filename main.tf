resource "aws_s3_bucket" "Glue-test-s3" {
   bucket = "Glue-test-s3"
   tags = {
     Name           = "cj-buck"
     Environment    = "dev"
   }
}