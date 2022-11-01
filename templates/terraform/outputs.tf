output "kubeconfig_gke" {
  value = var.enable_gke ? join(":", module.gke[*].kubeconfig_path) : ""
}

output "kubeconfig_eks" {
  value = var.enable_eks ? join(":", module.eks[*].kubeconfig_path) : ""
}

output "kubeconfig_aks" {
  value = var.enable_aks ? join(":", module.aks[*].kubeconfig_path) : ""
}
