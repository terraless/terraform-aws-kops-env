variable "state_bucket" {
  description = "S3 bucket for state storage"
}

resource "aws_s3_bucket" "state" {
  bucket = "${var.state_bucket}"
  acl    = "private"

  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket_public_access_block" "this" {
  bucket = "${aws_s3_bucket.state.id}"

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
