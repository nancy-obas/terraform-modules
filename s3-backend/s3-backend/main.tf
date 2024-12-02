# Create a DynamoDB table for state locking
provider "aws" {
  region = "us-east-1" # Replace with your desired region
}

resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-lock-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Environment = "Terraform"
    Purpose     = "State Locking"
  }
}


