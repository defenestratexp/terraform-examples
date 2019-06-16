##################
### S3 BUCKETS ###
##################

resource "aws_s3_bucket" "n9n_devel_main" {

  # The bucket name comes from tfvars but if no tfvars
  # exists it will choose the default set in variables.tf
  bucket    = "${var.s3_devel_main_bucket}"
  acl       = "private"

  # This comes from the variables file 
  tags = {
    environment = "${lookup(var.s3_tags, "environment")}"
  }

  # This comes from variables.tf
  # List indices start at 0 so the number 1
  # grabs the second value in the list
  region = "${var.s3_regions[1]}"
}