##################
### S3 BUCKETS ###
##################

resource "aws_s3_bucket" "n9n_devel_main" {
  bucket    = "n9n-devel-bucket"
  acl       = "private"

  tags = {
    Name          = "n9n_devel_bucket"
    Environment   = "development"
  }
}