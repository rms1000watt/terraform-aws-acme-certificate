provider "acme" {
  server_url = "https://acme-v02.api.letsencrypt.org/directory"
}

provider "aws" {
  region = "us-west-2"
}

data "aws_s3_bucket_object" "account_key_pem" {
  bucket = "goldenbear-letsencrypt"
  key    = "accounts/rms1000watt@yahoo.com.key.pem"
}

module "acme_certificate" {
  source = "../.."

  account_key_pem = "${data.aws_s3_bucket_object.account_key_pem.body}"
  common_name     = "test1.goldenbear.io"
  bucket          = "goldenbear-letsencrypt"
}
