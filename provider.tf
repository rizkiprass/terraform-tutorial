provider "aws" {
  region     = "eu-west-3"
  access_key = ""
  secret_key = ""
}

#terraform {
#  backend "s3" {
#    bucket = "s3-state-756"
#    key    = "state/terraform.tfstate"
#    region = "eu-west-3"
#  }
#}
