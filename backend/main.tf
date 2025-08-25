provider "aws" {
  region = "us-east-1"
}

# S3 Bucket for Terraform state
resource "aws_s3_bucket" "terraform_state" {
  bucket = "solar-system-terraform-state-123456" # change to unique name
  acl    = "private"

  force_destroy = true

  versioning {
    enabled = true
  }

  tags = {
    Name = "TerraformState"
  }
}

# DynamoDB Table for state locking
resource "aws_dynamodb_table" "terraform_locks" {
  name           = "solar-system-terraform-locks"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "TerraformLocks"
  }
}
# ----------------------------
# IAM OIDC Provider for GitHub
# ----------------------------
resource "aws_iam_openid_connect_provider" "github" {
  url             = "https://token.actions.githubusercontent.com"
  client_id_list  = ["sts.amazonaws.com"]
  thumbprint_list = ["6938fd4d98bab03faadb97b34396831e3780aea1"]
}

# ----------------------------
# IAM Role for GitHub Actions (Scoped)
# ----------------------------
resource "aws_iam_role" "github_actions_infra_role" {
  name = "GitHubActionsInfraRole"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Federated = aws_iam_openid_connect_provider.github.arn
        },
        Action = "sts:AssumeRoleWithWebIdentity",
        Condition = {
          StringEquals = {
            # Replace with your repo path
            "token.actions.githubusercontent.com:aud" = "sts.amazonaws.com"
            "token.actions.githubusercontent.com:sub" = "repo:YOUR_GITHUB_USER/YOUR_REPO:ref:refs/heads/main"
          }
        }
      }
    ]
  })
}

# ----------------------------
# Scoped Policy for Infra Role
# ----------------------------
resource "aws_iam_role_policy" "github_actions_infra_policy" {
  name = "GitHubActionsInfraPolicy"
  role = aws_iam_role.github_actions_infra_role.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Action = [
          # VPC
          "ec2:CreateVpc",
          "ec2:DescribeVpcs",
          "ec2:DeleteVpc",
          "ec2:CreateSubnet",
          "ec2:DescribeSubnets",
          "ec2:DeleteSubnet",
          "ec2:CreateRouteTable",
          "ec2:DescribeRouteTables",
          "ec2:AssociateRouteTable",
          "ec2:CreateInternetGateway",
          "ec2:DescribeInternetGateways",
          "ec2:AttachInternetGateway",
          "ec2:CreateNatGateway",
          "ec2:DescribeNatGateways",
          "ec2:AllocateAddress",
          "ec2:DescribeAddresses",
          "ec2:CreateSecurityGroup",
          "ec2:DescribeSecurityGroups",
          "ec2:AuthorizeSecurityGroupIngress",
          "ec2:AuthorizeSecurityGroupEgress",
          "ec2:DeleteSecurityGroup",
          "ec2:DeleteRouteTable"
        ],
        Resource = "*"
      },
      {
        Effect = "Allow",
        Action = [
          # EKS
          "eks:CreateCluster",
          "eks:DescribeCluster",
          "eks:UpdateClusterConfig",
          "eks:DeleteCluster",
          "eks:ListClusters",
          "eks:CreateNodegroup",
          "eks:DeleteNodegroup"
        ],
        Resource = "*"
      },
      {
        Effect = "Allow",
        Action = [
          # IAM for node roles
          "iam:PassRole",
          "iam:GetRole",
          "iam:CreateRole",
          "iam:AttachRolePolicy",
          "iam:PutRolePolicy"
        ],
        Resource = [
          # Node roles your workflow will create
          "arn:aws:iam::*:role/*-node-role",
          "arn:aws:iam::*:role/*-cluster-role"
        ]
      }
    ]
  })
}