# terraform.tfvars
# Infrastructure Configuration for Solar System App

# Network Configuration
vpc_cidr = "10.0.0.0/16"
availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]

# Subnet Configuration
private_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnet_cidrs  = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]

# EKS Cluster Configuration
cluster_name    = "solar-system-app-cluster"  # Changed from otel-cluster
cluster_version = "1.30"

 
# Node Groups Configuration
node_groups = {
  # Development/Testing - Small instances
  general = {
    instance_types = ["t3.medium"]  # Upgraded from t3.micro for better performance
    capacity_type  = "ON_DEMAND"
    scaling_config = {
      desired_size = 2   # Increased for HA
      max_size     = 5   # Increased for auto-scaling
      min_size     = 1
    }
  }
  
  # Optional: Spot instances for cost optimization
  # spot = {
  #   instance_types = ["t3.medium", "t3.large"]
  #   capacity_type  = "SPOT"
  #   scaling_config = {
  #     desired_size = 1
  #     max_size     = 3
  #     min_size     = 0
  #   }
  # }
}

# Kubernetes Namespace
app_namespace = "my-solar-system-app-namespace"

monitoring_namespace = "my-solar-system-app-monitoring"

argocd_namespace = "my-solar-system-app-argocd"

app_name = "solar-system-app"

# Karpenter Configuration
karpenter_nodepool_name     = "solar-nodepool"
karpenter_nodeclass_name    = "solar-nodeclass"
karpenter_node_role         = "KarpenterNodeRole-solar-system-app-cluster"
karpenter_instance_profile  = "KarpenterNodeInstanceProfile"
karpenter_namespace         = "karpenter"

# Karpenter Controller Resource Configuration
karpenter_controller_cpu_request    = "500m"
karpenter_controller_memory_request = "512Mi"
karpenter_controller_cpu_limit      = "1"
karpenter_controller_memory_limit   = "1Gi"
