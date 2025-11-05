resource "aws_s3_bucket" "remote_state_bucket_zero" {
  bucket = "remote-state-bucket-0"
}

resource "aws_s3_bucket" "remote_2_state_bucket" {
  bucket = "remote-2-state-bucket"
}

resource "aws_s3_bucket" "remote_3_state_bucket" {
  bucket = "remote-3-state-bucket"
}