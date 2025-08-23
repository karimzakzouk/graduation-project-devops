output "argocd_server_endpoint" {
  description = "ArgoCD server endpoint"
  value       = "http://argocd-server.${var.namespace}.svc.cluster.local"
}

output "argocd_namespace" {
  description = "ArgoCD namespace"
  value       = var.namespace
}

output "argocd_admin_password_secret" {
  description = "Name of the secret containing ArgoCD admin password"
  value       = "argocd-initial-admin-secret"
}

output "helm_release_name" {
  description = "Name of the ArgoCD Helm release"
  value       = helm_release.argocd.name
}

output "helm_release_status" {
  description = "Status of the ArgoCD Helm release"
  value       = helm_release.argocd.status
}

# Get ArgoCD admin password command
output "get_admin_password_command" {
  description = "Command to get ArgoCD admin password"
  value       = "kubectl -n ${var.namespace} get secret argocd-initial-admin-secret -o jsonpath='{.data.password}' | base64 -d"
}
