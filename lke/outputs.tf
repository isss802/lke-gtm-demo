output "kubeconfig_1" {
	value = linode_lke_cluster.lke-1.kubeconfig
	sensitive = true
}

output "kubeconfig_2" {
	value = linode_lke_cluster.lke-2.kubeconfig
	sensitive = true
}
