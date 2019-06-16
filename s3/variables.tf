# A standard variable
variable "s3_devel_main_bucket" {
  description     = "Name of the main S3 bucket"
  default         = "n9n-devel-bucket"
  type            = "string"
}

# A map example
variable "s3_tags" {
  type = "map"

  default = {
    created_by    = "tt"
    environment   = "development"
  }
}

# A list example
variable "s3_regions" {
  type = "list"
  default = ["us-east-1", "us-west-1"]
}