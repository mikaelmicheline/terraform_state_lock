output "s3_bucket_arn" {
  value = aws_s3_bucket.this.arn
}

output "dynamo_table_arn" {
  value = aws_dynamodb_table.this.arn
}