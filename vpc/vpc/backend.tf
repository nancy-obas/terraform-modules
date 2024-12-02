terraform {
  backend "s3" {
    bucket         = "a1nancy-terraform-state-bucket2"          # Replace with your existing bucket name
    key            = "terraform-vpc/state.tfstate"     # Path in the bucket to store the state file
    region         = "us-east-1"                   # Replace with your bucket's region
    encrypt        = true                          # Encrypt the state file
  }
}
