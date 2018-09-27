resource "acme_certificate" "w_sans" {
  account_key_pem           = "${local.account_key_pem}"
  common_name               = "${local.common_name}"
  subject_alternative_names = ["${local.subject_alternative_names}"]
  min_days_remaining        = "${local.min_days_remaining}"

  dns_challenge {
    provider = "route53"
  }

  count = "${local.count_w_sans}"
}

resource "acme_certificate" "n_sans" {
  account_key_pem    = "${local.account_key_pem}"
  common_name        = "${local.common_name}"
  min_days_remaining = "${local.min_days_remaining}"

  dns_challenge {
    provider = "route53"
  }

  count = "${local.count_n_sans}"
}
