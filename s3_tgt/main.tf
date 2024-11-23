resource "aws_s3_bucket" "Glue-test-s3" {
   bucket = "glue-cj-dest13-s3"
   tags = {
     Name           = "cj-buck"
     Environment    = "dev"
   }
}

# Create a folder within the S3 bucket
resource "aws_s3_bucket_object" "transformed_folder" {
  bucket = aws_s3_bucket.Glue-test-s3.bucket
  key    = "transformed/"  # The trailing slash indicates a folder
}
