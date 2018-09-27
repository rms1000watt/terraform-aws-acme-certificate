locals {
  account_key_pem           = "${var.account_key_pem}"
  common_name               = "${var.common_name}"
  subject_alternative_names = "${var.subject_alternative_names}"
  bucket                    = "${var.bucket}"
  min_days_remaining        = "${var.min_days_remaining}"

  name_key_pem    = "${local.common_name}/key.pem"
  name_issuer_pem = "${local.common_name}/issuer-cert.pem"
  name_cert_pem   = "${local.common_name}/cert.pem"

  count_w_sans = "${length(var.subject_alternative_names) > 0 ? 1 : 0}"
  count_n_sans = "${length(var.subject_alternative_names) == 0 ? 1 : 0}"

  certificate_private_key_pem = "${element(compact(concat(acme_certificate.w_sans.*.private_key_pem, acme_certificate.n_sans.*.private_key_pem,list("nil"))),0)}"
  certificate_issuer_pem      = "${element(compact(concat(acme_certificate.w_sans.*.issuer_pem, acme_certificate.n_sans.*.issuer_pem,list("nil"))),0)}"
  certificate_certificate_pem = "${element(compact(concat(acme_certificate.w_sans.*.certificate_pem, acme_certificate.n_sans.*.certificate_pem,list("nil"))),0)}"

  out_id                 = "${element(compact(concat(acme_certificate.w_sans.*.id, acme_certificate.n_sans.*.id,list("nil"))),0)}"
  out_certificate_url    = "${element(compact(concat(acme_certificate.w_sans.*.certificate_url, acme_certificate.n_sans.*.certificate_url,list("nil"))),0)}"
  out_certificate_domain = "${element(compact(concat(acme_certificate.w_sans.*.certificate_domain, acme_certificate.n_sans.*.certificate_domain,list("nil"))),0)}"
  out_account_ref        = "${element(compact(concat(acme_certificate.w_sans.*.account_ref, acme_certificate.n_sans.*.account_ref,list("nil"))),0)}"
  out_private_key_pem    = "${element(compact(concat(acme_certificate.w_sans.*.private_key_pem, acme_certificate.n_sans.*.private_key_pem,list("nil"))),0)}"
  out_certificate_pem    = "${element(compact(concat(acme_certificate.w_sans.*.certificate_pem, acme_certificate.n_sans.*.certificate_pem,list("nil"))),0)}"
  out_issuer_pem         = "${element(compact(concat(acme_certificate.w_sans.*.issuer_pem, acme_certificate.n_sans.*.issuer_pem,list("nil"))),0)}"
}
