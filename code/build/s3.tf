provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "5a399c21-90d2-456d-b0ca-1b82a0e9c9ff"
    git_commit           = "171b2ecc120fe070b56706fd3b6dbeb4419eec73"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-05-15 01:14:27"
    git_last_modified_by = "ricardo.oshiro@aetheron.pe"
    git_modifiers        = "ricardo.oshiro"
    git_org              = "adminrog"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
