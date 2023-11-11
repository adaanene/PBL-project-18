#Note: The bucket name may not work for you since buckets are unique globally in AWS, so you must give it a unique name.
resource "aws_s3_bucket" "terraform_state" {
  bucket = "ada-dev-terraform-bucket"
  
}

  # Enable versioning so we can see the full revision history of our state files
  resource "aws_s3_bucket_versioning" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Enable server-side encryption by default
resource "aws_s3_bucket_server_side_encryption_configuration" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id

  rule {
    apply_server_side_encryption_by_default {
       sse_algorithm = "AES256"
    }
  }
}


resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
  
# first create the state file and dynamodb table then uncomment this part

#   terraform {
#   backend "s3" {
#     bucket         = "ada-dev-terraform-bucket"
#     key            = "global/s3/terraform.tfstate"
#     region         = "eu-west-2"
#     dynamodb_table = "terraform-locks"
#     encrypt        = true
#   }
# }