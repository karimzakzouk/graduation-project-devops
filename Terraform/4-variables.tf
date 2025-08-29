variable "vpc_cidr" {
  description   = "CIDR Block for VPC"
  type          = string
  default       = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "private_subnet_cidrs" {
  description   = "CIDR blocks for private subnets"
  type          = list(string)
  default       = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}


variable "public_subnet_cidrs" {
  description   = "CIDR blocks for public subnets"
  type          = list(string)
  default       = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}


variable "cluster_name" {
  description   = "Name of the EKS cluster"
  type          = string
  default       = "otel-cluster"
}

variable "cluster_version" {
  description   = "Kubernetes version"
  type          = string
  default       = "1.30"
}


variable "node_groups" {
  description = "EKS node groups configuration"
  type = map(object({
    instance_types = list(string)
    capacity_type  = string
    scaling_config = object({
      desired_size = number
      max_size     = number
      min_size     = number 
    })
  }))

  default = {
    default = {
      instance_types = ["t3.micro"]
      capacity_type  = "ON_DEMAND"
      scaling_config = {
        desired_size = 1
        max_size     = 3
        min_size     = 1
      }
    }
  }
}

variable "app_namespace" {
  description = "Kubernetes namespace for the application"
  type        = string
  default     = "my-app-namespace"
}

variable "monitoring_namespace" {
  description = "Kubernetes namespace for monitoring tools"
  type        = string
  default     = "monitoring"
}

variable "argocd_namespace" {
  description = "Kubernetes namespace for ArgoCD"
  type        = string
  default     = "argocd"
}

variable "app_name" {
  description = "Name of the application"
  type        = string
  default     = "my-app"
}

# Karpenter Variables
variable "karpenter_nodepool_name" {
  description = "Name of the Karpenter NodePool"
  type        = string
  default     = "default-nodepool"
}

variable "karpenter_nodeclass_name" {
  description = "Name of the Karpenter EC2NodeClass"
  type        = string
  default     = "default-nodeclass"
}

variable "karpenter_node_role" {
  description = "IAM role name for Karpenter nodes"
  type        = string
  default     = "KarpenterNodeRole"
}

variable "karpenter_instance_profile" {
  description = "Instance profile name for Karpenter nodes"
  type        = string
  default     = "KarpenterNodeInstanceProfile"
}

variable "karpenter_namespace" {
  description = "Kubernetes namespace for Karpenter resources"
  type        = string
  default     = "karpenter"

  validation {
    condition     = can(regex("^[a-z0-9]([-a-z0-9]*[a-z0-9])?$", var.karpenter_namespace))
    error_message = "Karpenter namespace must be a valid Kubernetes namespace name (lowercase alphanumeric and hyphens only)."
  }
}

variable "karpenter_controller_cpu_request" {
  description = "CPU request for Karpenter controller"
  type        = string
  default     = "1"
}

variable "karpenter_controller_memory_request" {
  description = "Memory request for Karpenter controller"
  type        = string
  default     = "1Gi"
}

variable "karpenter_controller_cpu_limit" {
  description = "CPU limit for Karpenter controller"
  type        = string
  default     = "1"
}

variable "karpenter_controller_memory_limit" {
  description = "Memory limit for Karpenter controller"
  type        = string
  default     = "1Gi"
}