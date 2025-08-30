🌌 Solar System - Enterprise DevOps Application
A comprehensive Python web application demonstrating enterprise-grade DevOps practices with a complete CI/CD pipeline, Infrastructure as Code, GitOps implementation, and comprehensive monitoring.

🚀 Project Overview
This project showcases a Solar System visualization web application built with modern DevOps practices, featuring:

Interactive Solar System UI with planet data and animations

Python backend with MongoDB integration

Complete CI/CD pipeline with GitHub Actions

Infrastructure as Code using Terraform and AWS EKS

GitOps deployment with ArgoCD for automated application delivery

Comprehensive monitoring with Prometheus and Grafana

Containerized deployment with Docker and Kubernetes

Multi-registry container support (Docker Hub + GitHub Container Registry)

🏗️ Project Architecture Diagram
You can view the architecture diagram below for a visual overview of the system design:

<p align="center">
<img src="assets/Diagram.gif" alt="Project Architecture Diagram" width="600" />
</p>

🛠️ Technology Stack
Application Stack
Frontend: HTML5, CSS3, JavaScript (Interactive Solar System UI)

Backend: Python

Database: MongoDB

Testing: pytest

DevOps & Infrastructure
Containerization: Docker, Multi-stage builds

Orchestration: Kubernetes, Helm Charts

Cloud Provider: AWS (EKS, VPC, Load Balancers, S3)

Infrastructure as Code: Terraform with modular design

CI/CD: GitHub Actions with workflow orchestration

GitOps: ArgoCD for automated deployments and drift detection

Container Registry: Docker Hub + GitHub Container Registry

Monitoring & Observability:

Prometheus: Metrics collection and alerting

Grafana: Visualization dashboards and analytics

Built-in health checks and structured logging

✅ Prerequisites
Before you begin, ensure you have the following tools installed and configured:

AWS CLI: Configured with appropriate permissions to create EKS, VPC, and S3 resources.

Terraform: To manage and provision the cloud infrastructure.

kubectl: To interact with the Kubernetes cluster.

Helm: To manage Kubernetes applications.

Docker: For building and running containers locally.

🚀 Getting Started
To get this project up and running, follow these steps:

Clone the Repository

git clone [https://github.com/KarimZakzouk/Graduation-Project-Devops.git](https://github.com/KarimZakzouk/Graduation-Project-Devops.git)
cd Graduation-Project-Devops

Configure Infrastructure Backend
Update the infrastructure/2-backend.tf file with your S3 bucket details for Terraform remote state storage.

Deploy the Infrastructure
Navigate to the Terraform directory and initialize the deployment.

cd infrastructure/
terraform init
terraform apply -auto-approve

This will provision the VPC, EKS cluster, and deploy ArgoCD and the monitoring stack.

Configure kubectl
After Terraform completes, it will output the command to configure kubectl. Run that command to connect to your new EKS cluster.

Deploy the Application
The CI/CD pipeline handles this automatically. To deploy manually, you can apply the ArgoCD application manifest:

kubectl apply -f argocd/applications/solar-system-app.yaml

📁 Project Structure
├── 📱 Application Code
│   ├── app.py                # Main Python application
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
│   ├── ...                   # Main infrastructure files
│   └── modules/
│       ├── vpc/              # VPC module
│       ├── eks/              # EKS cluster module
│       ├── monitoring/       # Prometheus & Grafana setup
│       └── argocd/           # ArgoCD installation
│
├── 📊 Monitoring & GitOps
│   ├── monitoring/
│   │   ├── prometheus/       # Prometheus configuration
│   │   └── grafana/          # Grafana dashboards
│   └── argocd/
│       └── applications/     # ArgoCD application definitions
│
├── 🔄 CI/CD Workflows
│   └── .github/workflows/
│       ├── main-pipeline.yml # Orchestrator workflow
│       ├── ci.yml            # Test & quality checks
│       ├── docker.yml        # Container build & push
│       ├── terraform.yml     # Infrastructure deployment
│       └── deploy.yml        # Kubernetes deployment
│
└── 🖼️ Static Assets
    └── static/               # Planet images & backgrounds

🔄 DevOps Pipeline
This project is configured with a robust CI/CD pipeline using GitHub Actions to automate testing, building, and deployment.

1. Continuous Integration (CI)
Code Quality: Automated testing with pytest.

Code Coverage: Coverage reports to maintain standards.

Security Scanning: Container vulnerability checks.

2. Continuous Deployment (CD)
Multi-Registry Push: Pushes container images to Docker Hub & GitHub Container Registry.

Infrastructure Deployment: Terraform-managed AWS EKS deployment.

GitOps Deployment: ArgoCD ensures the deployed state matches the Git repository.

3. GitHub Actions Workflows
Main Pipeline (main-pipeline.yml)
Orchestrates all sub-workflows (CI, Docker, Terraform, etc.).

Allows configurable skips for faster development cycles.

CI Workflow (ci.yml)
Runs unit tests and code coverage.

Enforces quality gates before allowing code to be merged.

Docker Workflow (docker.yml)
Builds multi-architecture container images.

Scans images for vulnerabilities and pushes to multiple registries.

Terraform Workflow (terraform.yml)
Manages infrastructure provisioning and updates via IaC.

Uses an S3 backend for secure state management.

🎯 GitOps with ArgoCD
ArgoCD Implementation
Declarative GitOps: The Git repository serves as the single source of truth for all deployments.

Automated Sync: ArgoCD continuously monitors the Git repo and automatically syncs any changes to the cluster.

Self-Healing: Automatically corrects any configuration drift to ensure the live state matches the desired state in Git.

Rollback Capabilities: Easily revert to previous stable application states with a single command or click.

📊 Monitoring & Observability
Prometheus Stack
Metrics Collection: Gathers detailed metrics from the application, infrastructure, and Kubernetes.

Service Discovery: Automatically discovers new services and pods to monitor.

Alerting Rules: Pre-configured alerts for critical application and infrastructure issues.

Grafana Dashboards
Application Metrics: Dashboards for request rates, response times, and error rates.

Infrastructure Monitoring: Visualizes node CPU, memory, disk, and network usage.

Kubernetes Cluster: Monitors pod status, resource utilization, and overall cluster health.

☸️ Kubernetes Infrastructure
AWS EKS Cluster
Cluster Version: Kubernetes 1.30

Node Groups: Auto-scaling worker nodes (t3.medium instances) to handle variable loads.

Networking: Deployed in a custom VPC with public/private subnets across multiple availability zones for high availability.

Application Deployment
Helm Charts: Uses Helm for templating Kubernetes manifests, allowing for easy configuration and repeatable deployments.

Secrets Management: Manages sensitive data like API keys and credentials securely within the cluster.

Services: Exposes the application externally using a LoadBalancer with integrated health checks.

🤝 Contributing
Contributions are welcome! If you have suggestions for improvement, please open an issue or submit a pull request.

Fork the Project

Create your Feature Branch (git checkout -b feature/AmazingFeature)

Commit your Changes (git commit -m 'Add some AmazingFeature')

Push to the Branch (git push origin feature/AmazingFeature)

Open a Pull Request

📜 License
This project is licensed under the MIT License. See the LICENSE file for details.