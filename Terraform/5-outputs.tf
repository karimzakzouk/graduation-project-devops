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

# ArgoCD Outputs
output "argocd_server_endpoint" {
  description = "ArgoCD server endpoint"
  value       = module.argocd.argocd_server_endpoint
}

output "argocd_admin_password_command" {
  description = "Command to get ArgoCD admin password"
  value       = module.argocd.get_admin_password_command
}