# Linode Terraform Kubernetes Engine 

## 構成図

![1](https://user-images.githubusercontent.com/4577575/163385988-51ca7147-8fc4-41cb-b14d-6d4dfeda0b8d.png)

## Terraform

Kubernetesのクラスターを作成し、ノードを2つ作成する。


```sh
.
├── README.md
├── lke.tf クラスターの作成
├── outputs.tf 必要情報の表示
├── terraform.tf プロバイダーの指定
└── variables.tf 変数の指定
```
