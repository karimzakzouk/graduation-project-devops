variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "namespace" {
  description = "Kubernetes namespace for ArgoCD"
  type        = string
  default     = "argocd"
}

variable "chart_version" {
  description = "ArgoCD Helm chart version"
  type        = string
  default     = null
}

variable "service_type" {
  description = "Service type for ArgoCD server (LoadBalancer, ClusterIP, NodePort)"
  type        = string
  default     = "LoadBalancer"
}

variable "insecure" {
  description = "Run ArgoCD server in insecure mode (disable HTTPS)"
  type        = bool
  default     = true
}

variable "applications" {
  description = "List of ArgoCD applications to create"
  type = list(object({
    name              = string
    namespace         = string
    repository_url    = string
    path              = string
    target_revision   = string
    destination_namespace = string
    auto_sync         = bool
    self_heal         = bool
    prune             = bool
  }))
  default = []
}

variable "timeout" {
  description = "Timeout for Helm release"
  type        = number
  default     = 600
}

variable "wait_for_ready" {
  description = "Wait time for ArgoCD to be ready before creating applications"
  type        = string
  default     = "60s"
}

variable "dex_secret_key" {
  description = "Dex server secret key for ArgoCD (production)"
  type        = string
  sensitive   = true
  default     = random_password.dex_secret.result
}

