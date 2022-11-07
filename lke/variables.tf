variable "token" {}

variable "region" {
	default = {
		tokyo = "ap-northeast"
		singapore = "ap-south"
	}
}

variable "lke-1" {
  type = object({
		k8s_version = string
		label = string
    tags = list(string)
  })	
	default = {
		k8s_version = "1.23"
		label = "tokyo-lke-cluster"
		tags = ["testing"]
	}
}

variable "lke-2" {
  type = object({
    k8s_version = string
    label = string
    tags = list(string)
  })
  default = {
    k8s_version = "1.23"
    label = "singapore-lke-cluster"
    tags = ["testing"]
  }
}

variable "pools" {
  type = list(object({
    type = string
    count = number
  }))
  default = [
    {
      type = "g6-standard-1"
      count = 3
    }
  ]
}
