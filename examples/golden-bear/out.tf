output "certificate_only_pem" {
  value = "${module.acme_certificate.certificate_only_pem}"
}

output "certificate_pem" {
  value = "${module.acme_certificate.certificate_pem}"
}

output "issuer_pem" {
  value = "${module.acme_certificate.issuer_pem}"
}
