# 🌌 Solar System - Enterprise DevOps Application

<div align="center"> 
 
![Solar System Banner](https://img.shields.io/badge/Solar%20System-DevOps%20Application-blue?style=for-the-badge&logo=rocket)

[![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-CI%2FCD-blue?style=flat-square&logo=github-actions)](https://github.com/features/actions)
[![Kubernetes](https://img.shields.io/badge/Kubernetes-Orchestration-blue?style=flat-square&logo=kubernetes)](https://kubernetes.io/)
[![Terraform](https://img.shields.io/badge/Terraform-Infrastructure-purple?style=flat-square&logo=terraform)](https://terraform.io/)
[![AWS](https://img.shields.io/badge/AWS-Cloud%20Provider-orange?style=flat-square&logo=amazon-aws)](https://aws.amazon.com/)
[![ArgoCD](https://img.shields.io/badge/ArgoCD-GitOps-green?style=flat-square&logo=argo)](https://argoproj.github.io/cd/)
[![Karpenter](https://img.shields.io/badge/Karpenter-Kubernetes%20Orchestrator-blue?style=flat-square&logo=karpenter)](https://karpenter.sh/)
[![Prometheus](https://img.shields.io/badge/Prometheus-Monitoring-blue?style=flat-square&logo=prometheus)](https://prometheus.io/)
[![Grafana](https://img.shields.io/badge/Grafana-Monitoring-blue?style=flat-square&logo=grafana)](https://grafana.com/)
[![Helm](https://img.shields.io/badge/Helm-Kubernetes%20Package%20Manager-blue?style=flat-square&logo=helm)](https://helm.sh/)
[![Docker](https://img.shields.io/badge/Docker-Container%20Platform-blue?style=flat-square&logo=docker)](https://docker.com/) 

**A comprehensive Python web application demonstrating enterprise-grade DevOps practices with a complete CI/CD pipeline, Infrastructure as Code, GitOps implementation, and comprehensive monitoring.**

</div>

---

## 🚀 Project Overview

This project showcases a **Solar System visualization web application** built with modern DevOps practices, featuring:

<table>
<tr>
<td width="50%">

### 🎨 **Application Features**
- 🪐 Interactive Solar System UI with planet data and animations
- 🐍 Python backend with MongoDB integration
- 📱 Responsive web interface with modern design
</td>
<td width="50%">

### ⚙️ **DevOps Excellence**
- 🔄 Complete CI/CD pipeline with GitHub Actions
- 🏗️ Infrastructure as Code using Terraform and AWS EKS
- 🚀 GitOps deployment with ArgoCD for automated delivery
- 📊 Comprehensive monitoring with Prometheus and Grafana
- 📦 Containerization with Docker and Kubernetes
- 🚀 Scalability using Karpenter

</td>
</tr>
</table>

### 🏗️ **Project Architecture Diagram**

<div align="center">

You can view the architecture diagram below for a visual overview of the system design:

<p align="center">
<img src="assets/Diagram.gif" alt="Project Architecture Diagram" width="600" />
</p>

</div>

---

## 🛠️ Technology Stack

<details>
<summary><b>📱 Application Stack</b></summary>

| Technology | Purpose | Version |
|------------|---------|---------|
| ![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=flat-square&logo=html5&logoColor=white) | Frontend Structure | Latest |
| ![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=flat-square&logo=css3&logoColor=white) | Styling & Animations | Latest |
| ![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=flat-square&logo=javascript&logoColor=black) | Interactive UI | ES6+ |
| ![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white) | Backend API | 3.x |
| ![MongoDB](https://img.shields.io/badge/MongoDB-47A248?style=flat-square&logo=mongodb&logoColor=white) | Database | Latest |
| ![pytest](https://img.shields.io/badge/pytest-0A9EDC?style=flat-square&logo=pytest&logoColor=white) | Testing Framework | Latest |

</details>

<details>
<summary><b>🚀 DevOps & Infrastructure</b></summary>

| Category | Technologies |
|----------|--------------|
| **🐳 Containerization** | ![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white) Multi-stage builds |
| **☸️ Orchestration** | ![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=flat-square&logo=kubernetes&logoColor=white) ![Helm](https://img.shields.io/badge/Helm-0F1689?style=flat-square&logo=helm&logoColor=white) Charts |
| **☁️ Cloud Provider** | ![AWS](https://img.shields.io/badge/AWS-232F3E?style=flat-square&logo=amazon-aws&logoColor=white) (EKS, VPC, Load Balancers, S3) |
| **🏗️ Infrastructure as Code** | ![Terraform](https://img.shields.io/badge/Terraform-623CE4?style=flat-square&logo=terraform&logoColor=white) with modular design |
| **🔄 CI/CD** | ![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-2088FF?style=flat-square&logo=github-actions&logoColor=white) with workflow orchestration |
| **🚀 GitOps** | ![ArgoCD](https://img.shields.io/badge/ArgoCD-EF7B4D?style=flat-square&logo=argo&logoColor=white) for automated deployments and drift detection |
| **📦 Container Registry** | ![Docker Hub](https://img.shields.io/badge/Docker%20Hub-2496ED?style=flat-square&logo=docker&logoColor=white) + ![GitHub](https://img.shields.io/badge/GitHub%20Container%20Registry-181717?style=flat-square&logo=github&logoColor=white) |

</details>
<details>
<summary><b>🚀 Scalability & Auto-scaling</b></summary>

| Tool | Purpose |
|------|---------|
| [![Karpenter](https://github.com/kubernetes-sigs/karpenter/actions/workflows/presubmit.yaml/badge.svg)](https://github.com/kubernetes-sigs/karpenter/actions/workflows/presubmit.yaml) | Auto-scaling and resource management |

</details>

<details>
<summary><b>📊 Monitoring & Observability</b></summary>

| Tool | Purpose |
|------|---------|
| ![Prometheus](https://img.shields.io/badge/Prometheus-E6522C?style=flat-square&logo=prometheus&logoColor=white) | Metrics collection and alerting |
| ![Grafana](https://img.shields.io/badge/Grafana-F46800?style=flat-square&logo=grafana&logoColor=white) | Visualization dashboards and analytics |
| **🔍 Health Checks** | Built-in health checks and structured logging |

</details>

---

## ✅ Prerequisites

> **💡 Tip:** Make sure you have the following tools installed and configured before starting:

<table>
<tr>
<td width="33%">

### ☁️ **Cloud Tools**
- ![AWS CLI](https://img.shields.io/badge/AWS%20CLI-232F3E?style=flat-square&logo=amazon-aws&logoColor=white) 
  - Configured with appropriate permissions
  - EKS, VPC, DynamoDB, and S3 resource access

</td>
<td width="33%">

### 🏗️ **Infrastructure Tools**
- ![Terraform](https://img.shields.io/badge/Terraform-623CE4?style=flat-square&logo=terraform&logoColor=white) 
  - Infrastructure management
- ![kubectl](https://img.shields.io/badge/kubectl-326CE5?style=flat-square&logo=kubernetes&logoColor=white) 
  - Kubernetes cluster interaction

</td>
<td width="33%">

### 🐳 **Development Tools**
- ![Helm](https://img.shields.io/badge/Helm-0F1689?style=flat-square&logo=helm&logoColor=white) 
  - Kubernetes application management
- ![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white) 
  - Container building and testing

</td>
</tr>
<tr>
<td width="33%">

### 🚀 **Scalability Tools**
- ![Karpenter](https://img.shields.io/badge/Karpenter-0F1689?style=flat-square&logo=karpenter&logoColor=white) 
  - Auto-scaling and resource management

</td>
<td width="33%">

### 📥 **Deployment Tools**
- ![ArgoCD](https://img.shields.io/badge/ArgoCD-EF7B4D?style=flat-square&logo=argo&logoColor=white) 
  - GitOps deployment and drift detection

</td>
<td width="33%">

### 📊 **Monitoring Tools**
- ![Prometheus](https://img.shields.io/badge/Prometheus-E6522C?style=flat-square&logo=prometheus&logoColor=white) 
  - Metrics collection and alerting
- ![Grafana](https://img.shields.io/badge/Grafana-F46800?style=flat-square&logo=grafana&logoColor=white) 
  - Visualization dashboards and analytics

</td>
</tr>
</table>

---

## 🚀 Getting Started

Follow these steps to get your Solar System DevOps application up and running:

### 📥 **Step 1: Clone the Repository**

```bash
git clone https://github.com/karimzakzouk/graduation-project-devops.git
cd graduation-project-devops
```

### ⚙️ **Step 2: Configure Infrastructure Backend**

Update the `Terraform/2-backend.tf` file with your S3 bucket details for Terraform remote state storage.

### 🏗️ **Step 3: Deploy the Infrastructure**

Navigate to the Terraform directory and initialize the deployment:

```bash
cd Terraform/
terraform init
terraform apply -auto-approve
```

> **⏳ This will provision:** VPC, EKS cluster, ArgoCD, and the monitoring stack.

### 🔧 **Step 4: Configure kubectl**

After Terraform completes, it will output the command to configure kubectl. Run that command to connect to your new EKS cluster.

### 🚀 **Step 5: Deploy the Application**

The CI/CD pipeline handles this automatically. To deploy manually:

```bash
kubectl apply -f argocd/application.yaml
```

---

## 📁 Project Structure

<details>
<summary><b>🗂️ Click to expand project structure</b></summary>

```
├── 📱 Application Code
│   ├── app.py                # Main Python application
│   ├── app_test.py           # Test suites
│   ├── index.html            # Frontend UI
│   └── Dockerfile            # Container definition
│
├── ☸️ Helm
│   └── helm/
│       ├── Chart.yaml        # Helm chart metadata
│       ├── values.yaml       # Configuration values
│       └── templates/        # Kubernetes manifests
│   
│
├── 🏗️ Terraform
│   ├── 0-versions.tf         # Provider versions
│   ├── ...                   # Main infrastructure files
│   └── modules/
│       ├── vpc/              # VPC module
│       └── eks/              # EKS cluster module

├── 🚀 Scalability (Karpenter)
│   └── karpenter/
│       └── karpenter-resources.yaml    # Auto-scaling configuration
│
├── 📊 Monitoring & GitOps
│   └── argocd/
│       ├── monitoring.yml    # Prometheus & Grafana configuration
│       └── application.yml   # Application dashboards
│
├── 🔄 CI/CD Workflows
│   └── .github/workflows/
│       ├── main-pipeline.yml # Orchestrator workflow
│       ├── ci.yml            # Test, quality checks & SonarQube
│       ├── docker.yml        # Container build & push
│       ├── terraform.yml     # Infrastructure deployment
│       ├── karpenter.yml     # Auto-scaling provisioner
│       ├── argocd.yml        # GitOps controller setup
│       ├── monitoring.yml    # Observability stack deployment
│       └── deploy.yml        # Application deployment

├── 🔧 backend/
│   └── main.tf            # Terraform S3 & DynamoDB
│
└── 🖼️ Static Assets
    └── static/               # Planet images & backgrounds
```

</details>

---

## 🔄 DevOps Pipeline

<div align="center">

### **Robust CI/CD Pipeline with GitHub Actions**

![Pipeline Flow](https://img.shields.io/badge/Pipeline-Automated-success?style=for-the-badge)

</div>

<table>
<tr>
<td width="33%">

### 1️⃣ **Continuous Integration (CI)**
- ✅ **Code Quality:** Automated testing with pytest
- 📊 **Code Coverage:** Coverage reports to maintain standards
- 🔒 **Code Scanning:** Code quality checks using SonarQube

</td>
<td width="33%">

### 2️⃣ **Continuous Deployment (CD)**
- 📦 **Multi-Registry Push:** Docker Hub & GitHub Container Registry
- 🏗️ **Infrastructure Deployment:** Terraform-managed AWS EKS
- 🚀 **GitOps Deployment:** ArgoCD ensures Git-to-cluster sync

</td>
<td width="33%">

### 3️⃣ **GitHub Actions Workflows**
- 🎯 **Main Pipeline:** Orchestrates all sub-workflows
- ⚡ **Configurable Skips:** Faster development cycles
- 🔄 **Automated Triggers:** Push, PR, and scheduled runs
- 📋 **Trigger Filters:** Detect which workflow to run

</td>
</tr>
</table>

<details>
<summary><b>🔍 Detailed Workflow Breakdown</b></summary>

#### 🎯 **Main Pipeline** (`main-pipeline.yml`)
- Orchestrates all sub-workflows (CI, Docker, Terraform, etc.)
- Allows configurable skips for faster development cycles

#### 🧪 **CI Workflow** (`ci.yml`)
- Runs unit tests and code coverage
- Enforces quality gates before allowing code to be merged

#### 🐳 **Docker Workflow** (`docker.yml`)
- Builds multi-architecture container images
- Scans images for vulnerabilities and pushes to multiple registries

#### 🏗️ **Terraform Workflow** (`terraform.yml`)
- Manages infrastructure provisioning and updates via IaC
- Uses an S3 backend for secure state management

#### 🚀 **Karpenter Workflow** (`karpenter.yml`)
- Manages auto-scaling and resource management

#### 📊 **Monitoring Workflow** (`monitoring.yml`)
- Manages monitoring stack deployment

#### 📥 **ArgoCD Workflow** (`argocd.yml`)
- Manages ArgoCD deployment and drift detection

#### 📤 **Deploy Workflow** (`deploy.yml`)
- Manages application deployment

</details>

---

## 🎯 GitOps with ArgoCD

<div align="center">

![GitOps](https://img.shields.io/badge/GitOps-Powered%20by%20ArgoCD-green?style=for-the-badge&logo=argo)

</div>

### 🚀 **ArgoCD Implementation**

<table>
<tr>
<td width="25%">

#### 📋 **Declarative GitOps**
Git repository serves as the single source of truth for all deployments

</td>
<td width="25%">

#### 🔄 **Automated Sync**
ArgoCD continuously monitors Git repo and automatically syncs changes to cluster

</td>
<td width="25%">

#### 🛡️ **Self-Healing**
Automatically corrects configuration drift to ensure live state matches desired state

</td>
<td width="25%">

#### ↩️ **Rollback Capabilities**
Easily revert to previous stable application states with a single command

</td>
</tr>
</table>

---

## 📊 Monitoring & Observability

<div align="center">

### **Complete Monitoring Stack**

![Prometheus](https://img.shields.io/badge/Prometheus-E6522C?style=for-the-badge&logo=prometheus&logoColor=white)
![Grafana](https://img.shields.io/badge/Grafana-F46800?style=for-the-badge&logo=grafana&logoColor=white)

</div>

<table>
<tr>
<td width="50%">

### 📈 **Prometheus Stack**
- 📊 **Metrics Collection:** Detailed metrics from application, infrastructure, and Kubernetes
- 🔍 **Service Discovery:** Automatically discovers new services and pods to monitor
- 🚨 **Alerting Rules:** Pre-configured alerts for critical application and infrastructure issues

</td>
<td width="50%">

### 📈 **Grafana Dashboards**
- 📱 **Application Metrics:** Request rates, response times, and error rates
- 🖥️ **Infrastructure Monitoring:** Node CPU, memory, disk, and network usage
- ☸️ **Kubernetes Cluster:** Pod status, resource utilization, and cluster health

</td>
</tr>
</table>

---

## 🚀 Auto-scaling & Resource Management

<div align="center">

![Karpenter](https://img.shields.io/badge/Karpenter-Auto-scaling-orange?style=for-the-badge&logo=amazon-eks)

</div>

### 🚀 **Karpenter Implementation**

<table>
<tr>
<td width="50%">

#### ⚙️ **Cluster Configuration**
- **Version:** Kubernetes 1.30
- **Node Groups:** Auto-scaling worker nodes
- **Instance Type:** t3.medium instances

</td>
<td width="50%">

#### 📊 **Auto-scaling**
- **Auto-scaling:** Auto-scaling worker nodes
- **Instance Type:** t3.medium instances

</td>
</tr>
</table>

---

## ☸️ Kubernetes Infrastructure

<div align="center">

![AWS EKS](https://img.shields.io/badge/AWS%20EKS-Kubernetes%20Cluster-orange?style=for-the-badge&logo=amazon-eks)

</div>

### 🏛️ **AWS EKS Cluster**

<table>
<tr>
<td width="33%">

#### ⚙️ **Cluster Configuration**
- **Version:** Kubernetes 1.30
- **Node Groups:** Auto-scaling worker nodes
- **Instance Type:** t3.medium instances

</td>
<td width="33%">

#### 🌐 **Networking**
- **VPC:** Custom VPC deployment
- **Subnets:** Public/private across multiple AZs
- **High Availability:** Multi-zone deployment

</td>
<td width="33%">

#### 🚀 **Application Deployment**
- **Helm Charts:** Templated Kubernetes manifests
- **Secrets Management:** Secure credential handling
- **Load Balancing:** External exposure with health checks

</td>
</tr>
</table>

---

## 🤝 Contributing

<div align="center">

![Contributors Welcome](https://img.shields.io/badge/Contributors-Welcome-brightgreen?style=for-the-badge)

**Contributions are welcome! If you have suggestions for improvement, please open an issue or submit a pull request.**

</div>

### 📝 **How to Contribute**

1. **🍴 Fork the Project**
2. **🌿 Create your Feature Branch**
   ```bash
   git checkout -b feature/AmazingFeature
   ```
3. **💾 Commit your Changes**
   ```bash
   git commit -m 'Add some AmazingFeature'
   ```
4. **📤 Push to the Branch**
   ```bash
   git push origin feature/AmazingFeature
   ```
5. **🔄 Open a Pull Request**

---

<div align="center">

### 🌟 **Built with ❤️ for DevOps Excellence**

![Made with Love](https://img.shields.io/badge/Made%20with-❤️-red?style=for-the-badge)
![DevOps](https://img.shields.io/badge/DevOps-Excellence-blue?style=for-the-badge)

**⭐ Star this repository if you found it helpful!**

</div>
