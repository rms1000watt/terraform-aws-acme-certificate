variable "account_key_pem" {
  description = "Account key pem to create the cert with"
}

variable "common_name" {
  description = "Domain for letsencrypt"
}

variable "subject_alternative_names" {
  description = "SANs for letsencrypt"
  default     = []
}

variable "bucket" {
  description = "Bucket to place certs"
}

variable "min_days_remaining" {
  description = "The minimum amount of days remaining on the expiration of a certificate before a renewal is attempted"
  default     = 14
}
