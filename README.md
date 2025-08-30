# 🌌 Solar System DevOps Application

<div align="center">

![Solar System](https://img.shields.io/badge/Solar%20System-DevOps%20App-blue?style=for-the-badge&logo=rocket)

**Enterprise-grade Python web application with complete DevOps pipeline**

</div>

---

## 🚀 **What This Project Does**

**Interactive Solar System web app** that demonstrates modern DevOps practices in production.

### **🎯 Key Features**
- 🪐 **Solar System Visualization** - Interactive planets with real data
- 🐍 **Python Backend** - Flask API with MongoDB database  
- 📱 **Responsive Frontend** - Modern HTML/CSS/JavaScript interface
- 🔄 **Complete CI/CD** - Automated testing, building, and deployment
- ☸️ **Kubernetes Deployment** - AWS EKS cluster with auto-scaling
- 🚀 **GitOps** - ArgoCD for automated deployments
- 📊 **Monitoring** - Prometheus + Grafana dashboards

---

## 🛠️ **Technology Stack**

### **Application**
- **Frontend:** HTML5, CSS3, JavaScript
- **Backend:** Python Flask
- **Database:** MongoDB
- **Testing:** pytest with coverage

### **DevOps Infrastructure**  
- **Containers:** Docker with multi-stage builds
- **Orchestration:** Kubernetes (AWS EKS)
- **Infrastructure:** Terraform (AWS VPC, EKS, Load Balancers)
- **CI/CD:** GitHub Actions workflows
- **GitOps:** ArgoCD for deployment automation
- **Monitoring:** Prometheus metrics + Grafana dashboards
- **Scaling:** Karpenter for auto-scaling nodes

---

## 📋 **Prerequisites**

**Required tools:**
- AWS CLI (configured with permissions)
- Terraform
- kubectl
- Helm
- Docker

---

## 🚀 **Quick Start**

### **1. Clone Repository**
```bash
git clone https://github.com/karimzakzouk/graduation-project-devops.git
cd graduation-project-devops
```

### **2. Configure Terraform Backend**
Update `Terraform/2-backend.tf` with your S3 bucket details.

### **3. Deploy Infrastructure**
```bash
cd infrastructure/
terraform init
terraform apply -auto-approve
```
*Creates: VPC, EKS cluster, ArgoCD, monitoring stack*

### **4. Configure kubectl**
Run the kubectl command from Terraform output to connect to your cluster.

### **5. Deploy Application**
```bash
kubectl apply -f argocd/application.yaml
```

---

## 📁 **Project Structure**

```
├── 📱 app.py, index.html, Dockerfile    # Application code
├── ☸️ helm/                            # Kubernetes manifests
├── 🏗️ infrastructure/                  # Terraform modules
├── 🚀 argocd/                          # GitOps configurations  
├── 🔄 .github/workflows/               # CI/CD pipelines
└── 🖼️ static/                          # Assets and images
```

---

## 🔄 **DevOps Pipeline**

### **Automated Workflows**
1. **🧪 CI Pipeline** - Code testing, quality checks, security scanning
2. **🐳 Docker Build** - Multi-arch container images with vulnerability scanning  
3. **🏗️ Infrastructure** - Terraform deployment of AWS resources
4. **⚡ Auto-scaling** - Karpenter provisioner for dynamic node management
5. **🚀 GitOps** - ArgoCD setup and application deployment
6. **📊 Monitoring** - Prometheus and Grafana stack deployment

### **Key Pipeline Features**
- **✅ Quality Gates** - Automated testing and code coverage
- **🔒 Security Scanning** - Container vulnerability detection
- **📦 Multi-Registry Push** - Docker Hub + GitHub Container Registry
- **🎯 Smart Triggers** - Conditional workflow execution
- **⚡ Parallel Execution** - Optimized build times

---

## 🚀 **GitOps with ArgoCD**

**ArgoCD provides:**
- **📋 Declarative Deployments** - Git as single source of truth
- **🔄 Automatic Sync** - Continuous monitoring and deployment
- **🛡️ Self-Healing** - Automatic drift correction
- **↩️ Easy Rollbacks** - One-click revert to previous versions
- **👀 Visibility** - Real-time deployment status and history

---

## 📊 **Monitoring & Observability**

### **Prometheus Stack**
- **📊 Metrics Collection** - Application, infrastructure, and Kubernetes metrics
- **🎯 Service Discovery** - Automatic target detection
- **🚨 Alert Rules** - Proactive issue detection

### **Grafana Dashboards**
- **📱 Application Metrics** - Request rates, response times, errors
- **🖥️ Infrastructure Monitoring** - CPU, memory, disk, network usage  
- **☸️ Kubernetes Cluster** - Pod status, resource utilization

---

## ☸️ **Kubernetes Infrastructure**

### **AWS EKS Cluster**
- **📦 Version:** Kubernetes 1.30
- **🖥️ Node Groups:** Auto-scaling t3.medium instances
- **🌐 Networking:** Custom VPC with multi-AZ deployment
- **🔧 Management:** Helm charts for templated deployments
- **🔐 Security:** Proper RBAC and secrets management

---

## 🤝 **Contributing**

**Want to contribute?**

1. **Fork** the repository
2. **Create** feature branch: `git checkout -b feature/amazing-feature`
3. **Commit** changes: `git commit -m 'Add amazing feature'`
4. **Push** branch: `git push origin feature/amazing-feature`
5. **Open** a Pull Request

---

## 📚 **What You'll Learn**

This project demonstrates:

- **🏗️ Infrastructure as Code** with Terraform
- **🔄 CI/CD Pipeline Design** with GitHub Actions
- **☸️ Kubernetes Orchestration** on AWS EKS
- **🚀 GitOps Implementation** with ArgoCD
- **📊 Monitoring & Alerting** with Prometheus/Grafana
- **🐳 Container Best Practices** with Docker
- **⚡ Auto-scaling Strategies** with Karpenter
- **🛡️ Security Integration** throughout the pipeline

---

<div align="center">

## ⭐ **Star This Repository If You Found It Helpful!**

**Built with ❤️ for DevOps Excellence**

![Made with Love](https://img.shields.io/badge/Made%20with-❤️-red?style=for-the-badge)
![DevOps](https://img.shields.io/badge/DevOps-Excellence-blue?style=for-the-badge)

</div>
