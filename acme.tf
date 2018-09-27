resource "acme_certificate" "0" {
  account_key_pem = "${local.account_key_pem}"
  common_name     = "${local.common_name}"

  // subject_alternative_names = ["${local.subject_alternative_names}"]

  dns_challenge {
    provider = "route53"
  }
}
