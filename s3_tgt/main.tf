resource "aws_s3_bucket" "Glue-test-s3" {
   bucket = "glue-cj-dest13-s3"
   tags = {
     Name           = "cj-buck"
     Environment    = "dev"
   }
}
