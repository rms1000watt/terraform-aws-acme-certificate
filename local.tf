locals {
  account_key_pem           = "${var.account_key_pem}"
  common_name               = "${var.common_name}"
  subject_alternative_names = "${var.subject_alternative_names}"
  bucket                    = "${var.bucket}"

  name_key_pem    = "${local.common_name}/key.pem"
  name_issuer_pem = "${local.common_name}/issuer-cert.pem"
  name_cert_pem   = "${local.common_name}/cert.pem"
}
