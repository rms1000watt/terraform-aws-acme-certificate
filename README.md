# Terraform AWS ACME Certificate

## Introduction

Creates ACME certificate, validating against Route 53 and saves certs to S3

## Contents

- [Usage](#usage)

## Usage

```hcl
module "acme-certificate" {
  source = "rms1000watt/acme-certificate/aws"

  account_key_pem           = "${var.insert_account_key_pem_here}"
  common_name               = "blah.domain.com"
  // subject_alternative_names = ["bloo.domain.com", "blee.domain.com"] // TODO
  bucket                    = "example-letsencrypt"
}
```
