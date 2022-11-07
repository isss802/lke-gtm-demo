terraform {
	required_providers {
    akamai = {
      source  = "akamai/akamai"
    }
		linode = {
			source	= "linode/linode"
		}
    acme = {
      source  = "vancluever/acme"
    }
	}
}

provider "linode" {
	token = "${var.token}"
}

provider "acme" {
  server_url = "https://acme-v02.api.letsencrypt.org/directory"
}

provider "akamai" {
  edgerc         = "~/.edgerc"
  config_section = "default"
}
