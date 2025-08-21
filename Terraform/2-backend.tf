terraform {
  backend "s3" {
    bucket = "solar-system-terraform-state-123456"
    key    = "o-tel-demo/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "solar-system-terraform-locks"
    encrypt = true
  }
}
