resource "aws_s3_bucket_object" "key_pem" {
  key          = "${local.name_key_pem}"
  bucket       = "${local.bucket}"
  content      = "${local.certificate_private_key_pem}"
  content_type = "text/plain"
}

resource "aws_s3_bucket_object" "issuer_pem" {
  key          = "${local.name_issuer_pem}"
  bucket       = "${local.bucket}"
  content      = "${local.certificate_issuer_pem}"
  content_type = "text/plain"
}

resource "aws_s3_bucket_object" "cert_pem" {
  key          = "${local.name_cert_pem}"
  bucket       = "${local.bucket}"
  content      = "${local.certificate_certificate_pem}"
  content_type = "text/plain"
}

resource "aws_s3_bucket_object" "cert_only_pem" {
  key          = "${local.name_cert_only_pem}"
  bucket       = "${local.bucket}"
  content      = "${local.certificate_certificate_only_pem}"
  content_type = "text/plain"
}
