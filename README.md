# 🌌 Solar System - Enterprise DevOps Application

A comprehensive Python web application demonstrating enterprise-grade DevOps practices with a complete CI/CD pipeline, Infrastructure as Code, GitOps implementation, and comprehensive monitoring.

[![Python CI](https://github.com/KarimZakzouk/Graduation-Project-Devops/actions/workflows/ci.yml/badge.svg)](https://github.com/KarimZakzouk/Graduation-Project-Devops/actions/workflows/ci.yml)
[![Docker Build](https://github.com/KarimZakzouk/Graduation-Project-Devops/actions/workflows/docker.yml/badge.svg)](https://github.com/KarimZakzouk/Graduation-Project-Devops/actions/workflows/docker.yml)
[![Terraform](https://github.com/KarimZakzouk/Graduation-Project-Devops/actions/workflows/terraform.yml/badge.svg)](https://github.com/KarimZakzouk/Graduation-Project-Devops/actions/workflows/terraform.yml)

--- 

## 🚀 Project Overview

This project showcases a **Solar System visualization web application** built with modern DevOps practices, featuring:

- **Interactive Solar System UI** with planet data and animations
- **Python backend** with MongoDB integration
- **Complete CI/CD pipeline** with GitHub Actions
- **Infrastructure as Code** using Terraform and AWS EKS
- **GitOps deployment** with ArgoCD for automated application delivery
- **Comprehensive monitoring** with Prometheus and Grafana
- **Containerized deployment** with Docker and Kubernetes
- **Multi-registry container support** (Docker Hub + GitHub Container Registry)

---



## 🏗️ Project Architecture Diagram

You can view the architecture diagram below for a visual overview of the system design:

<p align="center">
  <img src="assets/Diagram.gif" alt="Project Architecture Diagram" width="600" />
</p>

---

## 🛠️ Technology Stack

### **Application Stack**
- **Frontend**: HTML5, CSS3, JavaScript (Interactive Solar System UI)
- **Backend**: Python
- **Database**: MongoDB with Mongoose ODM
- **Testing**: pytest, NYC (Code Coverage)

### **DevOps & Infrastructure**
- **Containerization**: Docker, Multi-stage builds
- **Orchestration**: Kubernetes, Helm Charts
- **Cloud Provider**: AWS (EKS, VPC, Load Balancers, S3)
- **Infrastructure as Code**: Terraform with modular design
- **CI/CD**: GitHub Actions with workflow orchestration
- **GitOps**: ArgoCD for automated deployments and drift detection
- **Container Registry**: Docker Hub + GitHub Container Registry
- **Monitoring & Observability**: 
  - **Prometheus**: Metrics collection and alerting
  - **Grafana**: Visualization dashboards and analytics
  - Built-in health checks and structured logging

---


## 🎥 Project Architecture Diagram

You can watch the architecture diagram video below for a visual overview of the system design:

<p align="center">
  <video width="600" controls>
    <source src="assets/Diagram.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</p>

---

## 📁 Project Structure

```
├── 📱 Application Code
│   ├── app.py                 # Main Python application
│   ├── app-test.py           # Test suites
│   ├── index.html            # Frontend UI
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
│       ├── eks/             # EKS cluster module
│       ├── monitoring/      # Prometheus & Grafana setup
│       └── argocd/          # ArgoCD installation
│
├── 📊 Monitoring & GitOps
│   ├── monitoring/
│   │   ├── prometheus/      # Prometheus configuration
│   │   ├── grafana/        # Grafana dashboards
│   │   └── alerting/       # Alert rules & notifications
│   └── argocd/
│       ├── applications/    # ArgoCD application definitions
│       └── projects/       # ArgoCD project configurations
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
    └── static/                 # Planet images & backgrounds
```

---

## 🔄 DevOps Pipeline

### **1. Continuous Integration (CI)**
- **Code Quality**: Automated testing with pytest
- **Code Coverage**: NYC coverage reports (85% threshold)
- **Security Scanning**: Container vulnerability checks
- **Dependency Management**: Automated dependency updates

### **2. Continuous Deployment (CD)**
- **Multi-Registry Push**: Docker Hub + GitHub Container Registry
- **Infrastructure Deployment**: Terraform-managed AWS EKS
- **GitOps Deployment**: ArgoCD automated sync and self-healing
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
- ArgoCD and monitoring stack deployment

#### **Deploy Workflow** (`deploy.yml`)
- Kubernetes secret management
- Helm chart deployments
- ArgoCD application sync

---

## 🎯 GitOps with ArgoCD

### **ArgoCD Implementation**
- **Declarative GitOps**: Git repository as single source of truth
- **Automated Sync**: Continuous monitoring and deployment of changes
- **Self-Healing**: Automatic correction of configuration drift
- **Rollback Capabilities**: Easy revert to previous application states
- **Multi-Environment Support**: Separate configurations for dev/staging/prod
- **RBAC Integration**: Role-based access control for team collaboration

### **ArgoCD Features Used**
- **Application Sets**: Manage multiple applications across environments
- **Sync Policies**: Automated and manual sync strategies
- **Health Checks**: Application health monitoring and reporting
- **Resource Hooks**: Pre/post deployment hooks for complex workflows
- **Notifications**: Integration with Slack/email for deployment status

---

## 📊 Monitoring & Observability

### **Prometheus Stack**
- **Metrics Collection**: Application, infrastructure, and Kubernetes metrics
- **Service Discovery**: Automatic discovery of monitoring targets
- **Alerting Rules**: Custom alerts for application and infrastructure health
- **Data Retention**: Configurable metric storage and cleanup policies
- **High Availability**: Multi-replica Prometheus setup with persistent storage

### **Grafana Dashboards**
- **Application Metrics**: Request rates, response times, error rates
- **Infrastructure Monitoring**: Node CPU, memory, disk, and network usage
- **Kubernetes Cluster**: Pod status, resource utilization, cluster health
- **Business Metrics**: User interactions, feature usage analytics
- **Custom Dashboards**: Solar system specific metrics and visualizations

### **Key Monitoring Features**
- **Real-time Dashboards**: Live metrics visualization
- **Alerting**: Slack/email notifications for critical issues
- **Log Aggregation**: Centralized logging with structured format
- **Distributed Tracing**: Request flow tracking across services
- **SLA Monitoring**: Service level objectives tracking


---

## ☸️ Kubernetes Infrastructure

### **AWS EKS Cluster**
- **Cluster Version**: Kubernetes 1.30
- **Node Groups**: Auto-scaling worker nodes (t3.medium instances)
- **Networking**: VPC with public/private subnets across multiple AZs

### **Application Deployment**
- **Helm Charts**: Templated Kubernetes manifests with values override
- **Secrets**: Environment configuration and sensitive data
- **Services**: LoadBalancer for external access with health checks
