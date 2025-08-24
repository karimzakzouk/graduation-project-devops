output "vpc_id" {
  description = "VPC ID"
  value = module.vpc.vpc_id
}

output "cluster_endpoint" {
  description = "EKS cluster endpoint"
  value = module.eks.cluster_endpoint
}

output "cluster_name" {
  description = "EKS cluster name"
  value = module.eks.cluster_name
}

output "app_namespace" {
  description = "Kubernetes namespace for the application"
  value       = var.app_namespace
}

output "monitoring_namespace" {
  description = "Kubernetes namespace for monitoring"
  value       = var.monitoring_namespace
}

output "argocd_namespace" {
  description = "Kubernetes namespace for ArgoCD"
  value       = var.argocd_namespace
}

output "app_name" {
  description = "Name of the application"
  value       = var.app_name
}
