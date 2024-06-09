resource "aws_s3_bucket" "Glue-test-s3" {
   bucket = "Glue-cj16-s3"
   tags = {
     Name           = "cj-buck"
     Environment    = "dev"
   }
}