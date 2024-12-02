# Output the DynamoDB table name
output "dynamodb_table_name" {
  value       = aws_dynamodb_table.terraform_locks.name
  description = "The name of the DynamoDB table used for state locking"
}

# Output the S3 bucket used for the backend
#output "s3_bucket_name" {
# value       = "my-existing-bucket"
#description = "The name of the existing S3 bucket used for storing the Terraform state"


# Output the backend S3 key where the state file is stored
output "s3_backend_key" {
  value       = "terraform/state.tfstate"
  description = "The path in the S3 bucket where the Terraform state file is stored"
}
