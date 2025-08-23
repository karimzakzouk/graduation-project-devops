
# 🌌 Solar System - Enterprise DevOps Application

A comprehensive Node.js web application demonstrating enterprise-grade DevOps practices with complete CI/CD pipeline, Infrastructure as Code, and GitOps implementation.

[![Node.js CI](https://github.com/KarimZakzouk/Graduation-Project-Devops/actions/workflows/ci.yml/badge.svg)](https://github.com/KarimZakzouk/Graduation-Project-Devops/actions/workflows/ci.yml)
[![Docker Build](https://github.com/KarimZakzouk/Graduation-Project-Devops/actions/workflows/docker.yml/badge.svg)](https://github.com/KarimZakzouk/Graduation-Project-Devops/actions/workflows/docker.yml)
[![Terraform](https://github.com/KarimZakzouk/Graduation-Project-Devops/actions/workflows/terraform.yml/badge.svg)](https://github.com/KarimZakzouk/Graduation-Project-Devops/actions/workflows/terraform.yml)

---

## 🚀 Project Overview

This project showcases a **Solar System visualization web application** built with modern DevOps practices, featuring:

- **Interactive Solar System UI** with planet data and animations
- **Node.js/Express backend** with MongoDB integration
- **Complete CI/CD pipeline** with GitHub Actions
- **Infrastructure as Code** using Terraform and AWS EKS
- **GitOps deployment** with ArgoCD
- **Containerized deployment** with Docker and Kubernetes
- **Multi-registry container support** (Docker Hub + GitHub Container Registry)

---

## 🏗️ Architecture Overview

```
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│   GitHub Repo   │───▶│  GitHub Actions │───▶│   Docker Hub    │
│                 │    │     CI/CD       │    │      GHCR       │
└─────────────────┘    └─────────────────┘    └─────────────────┘
                                │
                                ▼
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│   Terraform     │───▶│   AWS EKS       │───▶│     ArgoCD      │
│  Infrastructure │    │   Kubernetes    │    │    GitOps       │
└─────────────────┘    └─────────────────┘    └─────────────────┘
                                │
                                ▼
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│    MongoDB      │───▶│  Solar System   │───▶│   LoadBalancer  │
│   Database      │    │   Application   │    │   Public Access │
└─────────────────┘    └─────────────────┘    └─────────────────┘
```

---

## 🛠️ Technology Stack

### **Application Stack**
- **Frontend**: HTML5, CSS3, JavaScript (Interactive Solar System UI)
- **Backend**: Node.js, Express.js
- **Database**: MongoDB with Mongoose ODM
- **Testing**: Mocha, Chai, NYC (Code Coverage)

### **DevOps & Infrastructure**
- **Containerization**: Docker, Multi-stage builds
- **Orchestration**: Kubernetes, Helm Charts
- **Cloud Provider**: AWS (EKS, VPC, Load Balancers, S3)
- **Infrastructure as Code**: Terraform with modular design
- **CI/CD**: GitHub Actions with workflow orchestration
- **GitOps**: ArgoCD for automated deployments
- **Container Registry**: Docker Hub + GitHub Container Registry
- **Monitoring**: Built-in health checks and logging

---

## 📁 Project Structure

```
├── 📱 Application Code
│   ├── app.js                 # Main Node.js application
│   ├── app-controller.js      # Route controllers
│   ├── app-test.js           # Test suites
│   ├── index.html            # Frontend UI
│   ├── package.json          # Dependencies & scripts
│   └── Dockerfile            # Container definition
│
├── ☸️ Kubernetes & Helm
│   ├── helm/
│   │   ├── Chart.yaml        # Helm chart metadata
│   │   ├── values.yaml       # Configuration values
│   │   └── templates/        # Kubernetes manifests
│   └── kubernetes/           # Static K8s manifests
│
├── 🏗️ Infrastructure (Terraform)
│   ├── 0-versions.tf         # Provider versions
│   ├── 1-provider.tf         # AWS & K8s providers
│   ├── 2-backend.tf          # Remote state backend
│   ├── 3-main.tf            # Main infrastructure
│   ├── 4-variables.tf       # Input variables
│   ├── 5-outputs.tf         # Output values
│   └── modules/
│       ├── vpc/             # VPC module
│       └── eks/             # EKS cluster module
│
├── 🔄 CI/CD Workflows
│   └── .github/workflows/
│       ├── main-pipeline.yml    # Orchestrator workflow
│       ├── ci.yml              # Test & quality checks
│       ├── docker.yml          # Container build & push
│       ├── terraform.yml       # Infrastructure deployment
│       ├── deploy.yml          # Kubernetes deployment
│       └── destroy.yml         # Resource cleanup
│
└── 🖼️ Static Assets
    └── images/                 # Planet images & backgrounds
```

---

## 🔄 DevOps Pipeline

### **1. Continuous Integration (CI)**
- **Code Quality**: Automated testing with Mocha/Chai
- **Code Coverage**: NYC coverage reports (85% threshold)
- **Security Scanning**: Container vulnerability checks
- **Dependency Management**: Automated dependency updates

### **2. Continuous Deployment (CD)**
- **Multi-Registry Push**: Docker Hub + GitHub Container Registry
- **Infrastructure Deployment**: Terraform-managed AWS EKS
- **GitOps Deployment**: ArgoCD automated sync
- **Environment Promotion**: Automated deployment pipeline

### **3. GitHub Actions Workflows**

#### **Main Pipeline** (`main-pipeline.yml`)
- Orchestrates all sub-workflows
- Configurable skip options for development
- Environment-based deployments

#### **CI Workflow** (`ci.yml`)
- Unit & integration tests
- Code coverage reporting
- Quality gate enforcement

#### **Docker Workflow** (`docker.yml`)
- Multi-architecture builds
- Security scanning
- Multi-registry publishing

#### **Terraform Workflow** (`terraform.yml`)
- Infrastructure planning & deployment
- State management with S3 backend
- AWS EKS cluster provisioning

#### **Deploy Workflow** (`deploy.yml`)
- Kubernetes secret management
- Helm chart deployments
- ArgoCD application sync

---

## ☸️ Kubernetes Infrastructure

### **AWS EKS Cluster**
- **Cluster Version**: Kubernetes 1.30
- **Node Groups**: Auto-scaling worker nodes
- **Networking**: VPC with public/private subnets
- **Security**: RBAC, Security Groups, IAM roles

### **Application Deployment**
- **Helm Charts**: Templated Kubernetes manifests
- **ConfigMaps & Secrets**: Environment configuration
- **Services**: LoadBalancer for external access
- **Health Checks**: Readiness and liveness probes

### **GitOps with ArgoCD**
- **Automated Sync**: Git-based deployments
- **Self-Healing**: Automatic drift correction
- **Rollback**: Easy revert capabilities
- **UI Dashboard**: Visual deployment management

---

## � Getting Started

### **Prerequisites**
- AWS Account with appropriate permissions
- Docker Desktop
- Node.js 18+ 
- Git

### **Local Development**

1. **Clone the repository**
   ```bash
   git clone https://github.com/KarimZakzouk/Graduation-Project-Devops.git
   cd Graduation-Project-Devops
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Run tests**
   ```bash
   npm test
   npm run coverage
   ```

4. **Start the application**
   ```bash
   npm start
   # Application available at http://localhost:3000
   ```

### **Docker Development**

1. **Build the image**
   ```bash
   docker build -t solar-system:latest .
   ```

2. **Run the container**
   ```bash
   docker run -p 3000:3000 \
     -e MONGO_URI="your-mongo-uri" \
     -e MONGO_USERNAME="your-username" \
     -e MONGO_PASSWORD="your-password" \
     solar-system:latest
   ```

---

## 🔧 Production Deployment

### **Required Secrets**
Configure the following in GitHub Secrets:

```bash
# AWS Credentials
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY

# Container Registry
DOCKER_USERNAME
DOCKER_TOKEN

# Database
MONGO_URI
MONGO_USERNAME
MONGO_PASSWORD
```

### **Deployment Steps**

1. **Trigger Main Pipeline**
   - Go to Actions → Solar System - Main Pipeline
   - Click "Run workflow"
   - Configure options as needed

2. **Monitor Deployment**
   - Infrastructure: Check Terraform workflow
   - Application: Check ArgoCD dashboard
   - Access: Get LoadBalancer URL from AWS console

### **Manual Deployment**

```bash
# 1. Deploy Infrastructure
cd Terraform
terraform init
terraform plan
terraform apply

# 2. Configure kubectl
aws eks update-kubeconfig --name otel-cluster --region us-east-1

# 3. Deploy Application (handled by ArgoCD automatically)
kubectl get applications -n argocd
```

---

## 🔍 Monitoring & Operations

### **Application Monitoring**
- Health check endpoints
- Application logs via kubectl
- Performance metrics

### **Infrastructure Monitoring**
- AWS CloudWatch integration
- EKS cluster metrics
- Node and pod resource usage

### **Access & Management**
```bash
# Get application URL
kubectl get svc solar-system-svc

# Check ArgoCD dashboard
kubectl get svc argocd-server -n argocd

# View application logs
kubectl logs -l app=solar-system-helm

# Scale application
kubectl scale deployment solar-system-helm --replicas=3
```

---

## 🗑️ Cleanup

To destroy all resources:

```bash
# Via GitHub Actions
# Go to Actions → Terraform Destroy Workflow → Run workflow

# Or manually
cd Terraform
terraform destroy -auto-approve
```

---

## 📊 Project Metrics

- **Test Coverage**: 85%+ enforced
- **Build Time**: ~5-8 minutes end-to-end
- **Deployment Time**: ~10-15 minutes for full infrastructure
- **Container Size**: Optimized with Alpine Linux
- **Uptime**: High availability with auto-scaling

---

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 👥 Authors

- **Karim Zakzouk** - *DevOps Implementation* - [@KarimZakzouk](https://github.com/KarimZakzouk)
- **Siddharth Barahalikar** - *Original Application* - [LinkedIn](https://www.linkedin.com/in/barahalikar-siddharth/)

---

## 🙏 Acknowledgments

- Solar System data and images
- Open source DevOps tools community
- AWS EKS documentation and best practices
- ArgoCD project for GitOps capabilities

---

<div align="center">

**🌟 Star this repository if you found it helpful! 🌟**

[![GitHub stars](https://img.shields.io/github/stars/KarimZakzouk/Graduation-Project-Devops?style=social)](https://github.com/KarimZakzouk/Graduation-Project-Devops/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/KarimZakzouk/Graduation-Project-Devops?style=social)](https://github.com/KarimZakzouk/Graduation-Project-Devops/network/members)

</div>
