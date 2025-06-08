provider "aws" {
  region = "ap-south-1"
} 

resource "aws_s3_bucket" "example" {
  bucket = "ecommerce-eks-project"

  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "ecommerce-eks-project-state-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}