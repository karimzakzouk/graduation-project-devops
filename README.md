
# 🌌 Solar System Node.js Application

A dynamic web application built with Node.js, MongoDB, and HTML to visualize the Solar System and its planets.

---

## 🚀 Overview

This project offers an interactive representation of the Solar System, showcasing:

* The Sun and its eight planets.
* Realistic orbital mechanics and planet rotations.
* A user-friendly interface for exploration.

---

## 🛠️ Technologies Used

* **Frontend**: HTML, CSS, JavaScript
* **Backend**: Node.js
* **Database**: MongoDB
* **Containerization**: Docker
* **Infrastructure as Code**: Terraform
* **Orchestration**: Kubernetes

---

## ⚙️ Workflow & Architecture

The project employs a modern DevOps pipeline to ensure efficient development and deployment:

### 1. **CI/CD Pipeline**

Utilizing GitHub Actions, the workflow automates:

* **Testing**: Ensures code quality and functionality.
* **Docker Image Build**: Packages the application for consistent deployments.
* **Terraform Deployment**: Automates infrastructure provisioning.
* **Kubernetes Deployment**: Manages application scaling and availability.

### 2. **Infrastructure Management**

* **Terraform**: Defines and provisions infrastructure resources.
* **Kubernetes**: Orchestrates containerized applications for scalability and reliability.

### 3. **Containerization**

* **Docker**: Packages the application and its dependencies into a container, ensuring consistency across different environments.

---

## 📦 Setup & Installation

### Prerequisites

Ensure you have the following installed:

* [Node.js](https://nodejs.org/)
* [MongoDB](https://www.mongodb.com/)
* [Docker](https://www.docker.com/)
* [Terraform](https://www.terraform.io/)
* [Kubernetes](https://kubernetes.io/)

### Local Development

1. Clone the repository:

   ```bash
   git clone https://github.com/KarimZakzouk/solar-system.git
   cd solar-system
   ```

2. Install dependencies:

   ```bash
   npm install
   ```

3. Start the application:

   ```bash
   npm start
   ```

   The application will be accessible at `http://localhost:3000`.

### Dockerized Development

1. Build the Docker image:

   ```bash
   docker build -t solar-system .
   ```

2. Run the container:

   ```bash
   docker run -p 3000:3000 solar-system
   ```

   Access the application at `http://localhost:3000`.

### Deployment with Terraform & Kubernetes

1. Initialize Terraform:

   ```bash
   terraform init
   ```

2. Apply the Terraform configuration:

   ```bash
   terraform apply
   ```

   This will provision the necessary infrastructure.

3. Deploy the application to Kubernetes:

   ```bash
   kubectl apply -f k8s/
   ```

   Ensure your Kubernetes cluster is set up and configured correctly.


