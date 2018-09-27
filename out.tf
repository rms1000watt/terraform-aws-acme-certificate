output "id" {
  value = "${acme_certificate.0.id}"
}

output "certificate_url" {
  value = "${acme_certificate.0.certificate_url}"
}

output "certificate_domain" {
  value = "${acme_certificate.0.certificate_domain}"
}

output "account_ref" {
  value = "${acme_certificate.0.account_ref}"
}

output "private_key_pem" {
  value = "${acme_certificate.0.private_key_pem}"
}

output "certificate_pem" {
  value = "${acme_certificate.0.certificate_pem}"
}

output "issuer_pem" {
  value = "${acme_certificate.0.issuer_pem}"
}
