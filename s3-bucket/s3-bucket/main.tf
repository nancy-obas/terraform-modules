# Define the S3 bucket for Terraform backend state storage
resource "aws_s3_bucket" "terraform_state" {
  bucket = "a1nancy-terraform-state-bucket2" # Ensure this bucket name is unique globally
}

# Define an IAM policy for accessing the S3 bucket
resource "aws_iam_policy" "terraform_state_policy" {
  name        = "TerraformStatePolicy"
  description = "Policy for managing access to the S3 bucket"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = ["s3:ListBucket"],
        Resource = [aws_s3_bucket.terraform_state.arn]
      },
      {
        Effect   = "Allow",
        Action   = ["s3:PutObject", "s3:GetObject", "s3:DeleteObject"],
        Resource = ["${aws_s3_bucket.terraform_state.arn}/*"]
      }
    ]
  })
}


