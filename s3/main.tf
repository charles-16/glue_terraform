resource "aws_s3_bucket" "Glue-test-s3" {
   bucket = "glue-cj-test11-s3"
   tags = {
     Name           = "cj-buck"
     Environment    = "dev"
   }
}