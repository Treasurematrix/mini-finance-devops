# Mini Finance Project — Terraform + Ansible on Azure


## Overview

This project demonstrates a complete DevOps automation pipeline using Terraform (Infrastructure as Code) and Ansible (Configuration Management) to deploy a static Mini Finance web application on Azure.

It covers full lifecycle automation:

Provision → Configure → Deploy → Verify → Live Web App 🌐

🏗️ Architecture
Local Machine
     │
     │ Terraform (IaC)
     ▼
Azure Cloud Infrastructure
 ├── Resource Group
 ├── Virtual Network (10.0.0.0/16)
 ├── Subnet (10.0.1.0/24)
 ├── NSG (SSH:22, HTTP:80)
 ├── Public IP (Standard SKU)
 └── Ubuntu VM (B1s)
     │
     │ Ansible (CM)
     ▼
Application Layer
 ├── Nginx Installed
 ├── Git Installed
 ├── Mini Finance App Deployed
 └── HTTP 200 Verified
     │
     ▼
🌐 Live Website (Port 80)
⚙️ Tech Stack
Layer	Technology
☁️ Cloud	Microsoft Azure
🏗️ IaC	Terraform
⚙️ Config Mgmt	Ansible
🐧 OS	Ubuntu 22.04
🌐 Web Server	Nginx
🔧 VCS	Git
### 📁 Project Structure
mini-finance/
├── terraform/
│   ├── providers.tf
│   ├── main.tf
│   └── variables.tf
│
├── ansible/
│   ├── inventory.ini
│   └── site.yml
│
├── mini-finance-project/
│   └── static web files
│
└── README.md
### 🚀 Deployment Workflow
#### 🏗️ Step 1 — Infrastructure Provisioning (Terraform)

Terraform creates full Azure infrastructure:

Resource Group
Virtual Network
Subnet
NSG (Ports 22 & 80)
Public IP
Ubuntu VM
cd terraform
terraform init
terraform plan
terraform apply
⚙️ Step 2 — Configuration & Deployment (Ansible)
Play 1 — Install Dependencies
Install Nginx
Install Git
Start & enable Nginx
Play 2 — Deploy Application
Clone Mini Finance project
Copy files to /var/www/html
Set permissions
Reload Nginx
Play 3 — Verify Deployment
Check HTTP response (200 OK)
cd ansible
ansible-playbook -i inventory.ini site.yml
🌍 Live Deployment

👉 Public URL:

http://20.63.38.137

🔐 Security Highlights
🔑 RSA SSH Authentication (Passwordless access)
🔥 NSG firewall rules (restricted ports 22 & 80)
🛡️ Secure cloud VM deployment
⚠️ Challenges & Fixes
❌ SSH Key Issue
Azure rejected ed25519 keys
✔️ Fixed by using RSA SSH keys
❌ Public IP SKU Limit
Basic SKU quota exceeded
✔️ Fixed by switching to Standard SKU
❌ Git Clone Hanging
Ansible git module stuck at ls-remote
✔️ Fixed using optimized deployment strategy
❌ Deployment Delay
VM network latency
✔️ Fixed using lightweight deployment approach
### 🧠 Key Learnings
Terraform infrastructure automation on Azure
Ansible multi-playbook orchestration
Real-world debugging of cloud deployments
Separation of Infrastructure vs Configuration layers
Secure SSH-based automation workflows
#### 📸 Screenshots (For Submission)
Terraform apply success
Terraform output (public IP)
Azure NSG rules (22 & 80)
Ansible playbook success output
Browser showing live site
📈 Real-World Use Cases

## 🏗️ Architecture Diagram
![Mini_finance_arch](/home/chiomanwosu/ANSIBLE/mini-finance/imaages/mini_finance_arch.png)

This architecture shows the separation of concerns between Infrastructure (Terraform) and Configuration Management (Ansible).
Terraform provisions Azure resources while Ansible configures the VM and deploys the application.

This architecture is used in:

CI/CD pipelines
Cloud provisioning automation
Dev/Test environment setup
Scalable web hosting systems
Infrastructure standardization
👩🏽‍💻 Author

Chioma Nwosu
Cloud & DevOps Engineer
(Terraform | Ansible | Azure | AWS)

⭐ Final Note

This project demonstrates a full end-to-end DevOps pipeline, combining infrastructure automation and configuration management to deliver a live cloud-hosted application.