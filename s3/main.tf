resource "aws_s3_bucket" "Glue-test-s3" {
   bucket = "my-temp-bucket"
   tags = {
     Name           = "my-temp-bucket"
     Environment    = "dev"
   }
}