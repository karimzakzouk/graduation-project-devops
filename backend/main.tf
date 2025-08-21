provider "aws" {
  region = "us-east-1"
}

# S3 Bucket for Terraform state
resource "aws_s3_bucket" "terraform_state" {
  bucket = "solar-system-terraform-state-123456" # change to unique name
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name = "TerraformState"
  }
}

# DynamoDB Table for state locking
resource "aws_dynamodb_table" "terraform_locks" {
  name           = "solar-system-terraform-locks"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "TerraformLocks"
  }
}
