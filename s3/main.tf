resource "aws_s3_bucket" "Glue-test-s3" {
   bucket = "my-temp-bucket-cj17"
   tags = {
     Name           = "my-temp-bucket"
     Environment    = "dev"
   }
}
