output "full_cert" {
  value = "${acme_certificate.certificate.certificate_pem}${acme_certificate.certificate.issuer_pem}"
	sensitive = true
}

output "prikey" {
  value = acme_certificate.certificate.private_key_pem
	sensitive = true
}
