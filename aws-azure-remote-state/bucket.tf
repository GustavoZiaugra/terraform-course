resource "aws_s3_bucket" "remote_state_bucket" {
  bucket = "remote-state-bucket"
}

resource "aws_s3_bucket_versioning" "remote_state_bucket_versioning" {
  bucket = aws_s3_bucket.remote_state_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}