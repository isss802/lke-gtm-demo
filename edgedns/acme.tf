resource "tls_private_key" "private_key" {
  algorithm = "RSA"
}

resource "acme_registration" "reg" {
  account_key_pem = tls_private_key.private_key.private_key_pem
  email_address   = var.e_mail
}

resource "acme_certificate" "certificate" {
  account_key_pem           = acme_registration.reg.account_key_pem
  common_name               = join(".", ["*",var.zone_name])
  subject_alternative_names = [var.zone_name]

  dns_challenge {
    provider = "edgedns"
		config = {
			AKAMAI_EDGERC = "~/.edgerc"
			AKAMAI_EDGERC_SECTION  = "default"
		}
  }
 depends_on = [akamai_dns_zone.main]
}
