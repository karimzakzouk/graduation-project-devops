# terraform.tfvars - OPTIMIZED FOR SPEED
# Infrastructure Configuration for Solar System App
region           = "us-east-1"
# Network Configuration - REDUCED TO 2 AZs
vpc_cidr           = "10.0.0.0/16"
availability_zones = ["us-east-1a", "us-east-1b"] # Reduced from 3 to 2 AZs

# Subnet Configuration - FEWER SUBNETS
private_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"] # Reduced from 3 to 2
public_subnet_cidrs  = ["10.0.4.0/24", "10.0.5.0/24"] # Reduced from 3 to 2

# EKS Cluster Configuration
cluster_name    = "solar-system-app-cluster"
cluster_version = "1.30"

# Node Groups Configuration - OPTIMIZED FOR SPEED
node_groups = {
  # Single medium node for faster provisioning
  general = {
    instance_types = ["t3.medium"] # Medium instance = balanced performance
    capacity_type  = "ON_DEMAND"
    scaling_config = {
      desired_size = 2 # Single node for development
      max_size     = 3 # Reduced max
      min_size     = 1
    }

    ssh_key_name = "MyPairKey" 
  }
}

# Kubernetes Namespace
app_namespace        = "my-solar-system-app-namespace"
monitoring_namespace = "my-solar-system-app-monitoring"
argocd_namespace     = "my-solar-system-app-argocd"
app_name             = "solar-system-app"

# Karpenter Configuration - MINIMAL RESOURCES
karpenter_nodepool_name    = "solar-nodepool"
karpenter_nodeclass_name   = "solar-nodeclass"
karpenter_node_role        = "KarpenterNodeRole-solar-system-app-cluster"
karpenter_instance_profile = "KarpenterNodeInstanceProfile"
karpenter_namespace        = "karpenter"

# Karpenter Controller Resource Configuration - REDUCED
karpenter_controller_cpu_request    = "200m"  # Reduced from 500m
karpenter_controller_memory_request = "256Mi" # Reduced from 512Mi
karpenter_controller_cpu_limit      = "500m"  # Reduced from 1
karpenter_controller_memory_limit   = "512Mi" # Reduced from 1Gi
