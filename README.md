# Linode Terraform Kubernetes Engine 

## 構成図

![1](https://user-images.githubusercontent.com/4577575/199650605-3ca61383-ffe5-4cf2-b4c5-cc7c47284fe2.png)

## Terraform

Kubernetesのクラスターをマルチリージョンで作成し、Akamai GTMとEdgeDNSを利用して負荷分散をする。


```sh
.
├── README.md
├── edgedns # Edge DNSを証明書の構成情報
│   ├── README.me
│   ├── acme.tf
│   ├── edgedns.tf
│   ├── outputs.tf
│   ├── terraform.tf
│   └── variables.tf
├── gtm # Akamai GTMの構成情報
│   ├── gtm.tf
│   ├── terraform.tf
│   └── variables.tf
├── kubectl # kubectlにて利用する構成情報
│   ├── README.me
│   ├── deployment.yaml
│   └── service.yaml
└── lke # Linode Kubernetesの構成情報 
    ├── README.md
    ├── lke.tf
    ├── outputs.tf
    ├── terraform.tf
    └── variables.tf
```
