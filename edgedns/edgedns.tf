resource "akamai_dns_zone" "main" {
    contract = var.contract_id
    group = var.group_id
    zone = var.zone_name
    type =  "primary"
    sign_and_serve = false
    comment =  var.comment
}

resource "akamai_dns_record" "gtm" {
  zone = var.zone_name
  name = join(".", ["gtm",var.zone_name])
  recordtype =  "CNAME"
  ttl =  30
  target = [var.target]
  active = true
  depends_on = [akamai_dns_zone.main]
}
