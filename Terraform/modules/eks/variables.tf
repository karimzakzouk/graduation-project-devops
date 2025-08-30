variable "cluster_name" {
  description   = "Name of the EKS cluster"
  type          = string
}

variable "cluster_version" {
  description   = "Kubernetes version"
  type          = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "cluster_subnet_ids" {
  description = "List of subnet IDs for EKS cluster (public + private)"
  type        = list(string)
}

variable "node_subnet_ids" {
  description = "List of subnet IDs for EKS node groups (private only)"
  type        = list(string)
}
variable "node_groups" {
  description   = "EKS node groups configuration"
  type          = map(object({
    instance_types = list(string)
    capacity_type  = string
    scaling_config = object({
      desired_size = number
      max_size     = number
      min_size     = number 
    })
  }))
}