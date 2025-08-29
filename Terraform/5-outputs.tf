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

# Karpenter Outputs
output "karpenter_nodepool_name" {
  description = "Name of the Karpenter NodePool"
  value       = var.karpenter_nodepool_name
}

output "karpenter_nodeclass_name" {
  description = "Name of the Karpenter EC2NodeClass"
  value       = var.karpenter_nodeclass_name
}

output "karpenter_node_role" {
  description = "IAM role name for Karpenter nodes"
  value       = var.karpenter_node_role
}

output "karpenter_instance_profile" {
  description = "Instance profile name for Karpenter nodes"
  value       = var.karpenter_instance_profile
}

output "karpenter_namespace" {
  description = "Kubernetes namespace for Karpenter resources"
  value       = var.karpenter_namespace
}

output "karpenter_controller_cpu_request" {
  description = "CPU request for Karpenter controller"
  value       = var.karpenter_controller_cpu_request
}

output "karpenter_controller_memory_request" {
  description = "Memory request for Karpenter controller"
  value       = var.karpenter_controller_memory_request
}

output "karpenter_controller_cpu_limit" {
  description = "CPU limit for Karpenter controller"
  value       = var.karpenter_controller_cpu_limit
}

output "karpenter_controller_memory_limit" {
  description = "Memory limit for Karpenter controller"
  value       = var.karpenter_controller_memory_limit
}

# New Karpenter outputs from EKS module
output "karpenter_controller_role_arn" {
  description = "Karpenter controller IAM role ARN"
  value       = module.eks.karpenter_controller_role_arn
}

output "karpenter_interruption_queue_name" {
  description = "Karpenter interruption SQS queue name"
  value       = module.eks.karpenter_interruption_queue_name
}
