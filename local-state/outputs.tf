output "s3_bucket_id" {
  description = "Value of the S3 bucket id"
  value       = aws_s3_bucket.local_state_bucket.id
}

output "s3_bucket_arn" {
  description = "Value of the S3 bucket ARN"
  value       = aws_s3_bucket.local_state_bucket.arn
}