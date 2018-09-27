variable "account_key_pem" {
  description = "Account key pem to create the cert with"
}

variable "common_name" {
  description = "Domain for letsencrypt"
}

variable "subject_alternative_names" {
  description = "SANs for letsencrypt"
  default     = [""]
}

variable "bucket" {
  description = "Bucket to place certs"
}
