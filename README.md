# 🌌 Solar System - Enterprise DevOps Application

<div align="center">

![Solar System](https://img.shields.io/badge/Solar%20System-DevOps%20Platform-blue?style=for-the-badge&logo=rocket)

[![CI/CD](https://img.shields.io/badge/GitHub%20Actions-Pipeline-2088FF?style=flat-square&logo=github-actions)](https://github.com/features/actions)
[![Kubernetes](https://img.shields.io/badge/Kubernetes-1.30-326CE5?style=flat-square&logo=kubernetes)](https://kubernetes.io/)
[![Terraform](https://img.shields.io/badge/Terraform-IaC-623CE4?style=flat-square&logo=terraform)](https://terraform.io/)
[![ArgoCD](https://img.shields.io/badge/ArgoCD-GitOps-EF7B4D?style=flat-square&logo=argo)](https://argoproj.github.io/cd/)

**Interactive Solar System web app with enterprise-grade DevOps practices**

</div>

---

## 🚀 Overview

Production-ready Solar System visualization platform demonstrating modern DevOps practices with complete automation, monitoring, and scalability.

**Key Features:**
- 🪐 Interactive planet data visualization with Flask + MongoDB
- 🔄 Smart CI/CD pipeline with change detection
- 🏗️ AWS EKS infrastructure with Terraform
- 🚀 GitOps deployment with ArgoCD
- 📊 Complete monitoring stack (Prometheus + Grafana)
- ⚡ Auto-scaling with Karpenter

### 🏗️ Architecture

<p align="center">
<img src="assets/Diagram.gif" alt="Architecture Diagram" width="600" />
</p>

---

## 🛠️ Tech Stack

<table>
<tr>
<td width="50%">

### 📱 Application
- **Frontend:** HTML5, CSS3, JavaScript
- **Backend:** Python Flask 2.3.3
- **Database:** MongoDB with PyMongo
- **Testing:** pytest with coverage
- **Monitoring:** Prometheus metrics

</td>
<td width="50%">

### 🏗️ Infrastructure  
- **Cloud:** AWS EKS, VPC, S3
- **IaC:** Terraform with modular design
- **Containers:** Docker + Kubernetes + Helm
- **GitOps:** ArgoCD for automated deployment
- **Auto-scaling:** Karpenter for dynamic nodes

</td>
</tr>
</table>

---

## ✅ Prerequisites

- **AWS CLI** with EKS/VPC permissions
- **Terraform** v1.5.7+
- **kubectl** and **Helm** v3.14+
- **Docker** for local testing

**Required Secrets:**
`AWS_ACCOUNT_ID`, `DOCKER_USERNAME`, `DOCKER_TOKEN`, `MONGO_URI`, `MONGO_USERNAME`, `MONGO_PASSWORD`, `GRAFANA_ADMIN_PASSWORD`, `PAT_GITHUB`, `SONAR_TOKEN`

---

## 🚀 Quick Start

### 1. **Clone & Setup**
```bash
git clone https://github.com/KarimZakzouk/Graduation-Project-Devops.git
cd Graduation-Project-Devops
```

### 2. **Configure Backend**
Update `infrastructure/2-backend.tf` with your S3 bucket for Terraform state.

### 3. **Deploy via GitHub Actions**
- Go to **Actions** → **Solar System - Main Pipeline** → **Run workflow**
- Or deploy manually:
```bash
cd Terraform/
terraform init && terraform apply -auto-approve
aws eks update-kubeconfig --name solar-system-app-cluster --region us-east-1
kubectl apply -f argocd/applications/
```

---

## 🔄 CI/CD Pipeline

### **Smart Multi-Workflow Architecture**

- **🎯 Main Pipeline** - Orchestrates all workflows with change detection
- **🧪 CI Workflow** - Multi-platform testing (Python 3.10-3.12) + SonarCloud
- **🐳 Docker Workflow** - Multi-registry builds with testing
- **🏗️ Terraform Workflow** - AWS infrastructure deployment
- **⚡ Karpenter Workflow** - Auto-scaling node provisioner
- **🚀 ArgoCD Workflow** - GitOps controller setup
- **📊 Monitoring Workflow** - Prometheus/Grafana stack
- **🌐 Endpoints Workflow** - Service discovery and URLs

**Features:**
- Intelligent change detection (app vs infrastructure)
- Manual workflow control with skip options
- Multi-registry container deployment
- Automated Helm chart updates
- Complete infrastructure teardown capability

---

## 🎯 GitOps with ArgoCD

- **📋 Declarative:** Git as single source of truth
- **🔄 Automated Sync:** Real-time cluster synchronization  
- **🛡️ Self-Healing:** Automatic drift correction
- **↩️ Easy Rollbacks:** One-click version recovery

**Applications Managed:**
- Solar System app (via separate Helm repo)
- Monitoring stack (kube-prometheus-stack)

---

## 📊 Monitoring & Access

### **Service Endpoints:**
- **🌌 Solar System App:** `http://{app-lb}/`
- **🚀 ArgoCD:** `http://{argocd-lb}/`
- **📊 Prometheus:** `http://{nginx-lb}/prometheus`
- **📈 Grafana:** `http://{nginx-lb}/grafana`
- **🚨 AlertManager:** `http://{nginx-lb}/alertmanager`

### **Default Credentials:**
- **ArgoCD:** admin / `{auto-generated}`
- **Grafana:** admin / `{from secrets}`

---

## 📁 Key Files

```
├── app.py                    # Flask app with MongoDB & metrics
├── index.html                # Interactive Solar System UI
├── Dockerfile               # Alpine-based container
├── helm/                    # Kubernetes manifests & values
├── Terraform/               # AWS infrastructure modules
├── .github/workflows/       # 8 specialized CI/CD workflows
├── argocd/                  # GitOps application definitions
└── karpenter/               # Auto-scaling configurations
```

---

## 🤝 Contributing

1. **Fork** the repository
2. **Create** feature branch: `git checkout -b feature/amazing-feature`
3. **Commit** changes: `git commit -m 'Add amazing feature'`
4. **Push** to branch: `git push origin feature/amazing-feature`
5. **Open** Pull Request

---

<div align="center">

### 🌟 **Enterprise DevOps Excellence**

![Built with DevOps](https://img.shields.io/badge/Built%20with-DevOps%20Excellence-success?style=for-the-badge)

**⭐ Star this repo if you found it helpful!**

</div>
