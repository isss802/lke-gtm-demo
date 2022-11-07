# Export Token
```
export TF_VAR_token=
```

# Terraform
```
terraform plan
terraform apply
```

# Kubeconfig Output
```
export KUBE_VAR=`terraform output -raw kubeconfig_1` && echo $KUBE_VAR | base64 -d > ../kubectl/lke-cluster-config-1.yaml
export KUBE_VAR=`terraform output -raw kubeconfig_2` && echo $KUBE_VAR | base64 -d > ../kubectl/lke-cluster-config-2.yaml
```
