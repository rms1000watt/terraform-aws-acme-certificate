resource "aws_s3_bucket_object" "key_pem" {
  key          = "${local.name_key_pem}"
  bucket       = "${local.bucket}"
  content      = "${acme_certificate.0.private_key_pem}"
  content_type = "text/plain"
}

resource "aws_s3_bucket_object" "issuer_pem" {
  key          = "${local.name_issuer_pem}"
  bucket       = "${local.bucket}"
  content      = "${acme_certificate.0.issuer_pem}"
  content_type = "text/plain"
}

resource "aws_s3_bucket_object" "cert_pem" {
  key          = "${local.name_cert_pem}"
  bucket       = "${local.bucket}"
  content      = "${acme_certificate.0.certificate_pem}"
  content_type = "text/plain"
}
