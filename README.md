"# 🚀 Cloud Native LLM Platform on Kubernetes (AWS EKS)

A cloud-native platform to deploy Large Language Model workloads on Kubernetes using AWS EKS and Terraform.  
This project demonstrates production-style infrastructure provisioning, deployment automation, and scalable AI workloads.

This repository is built as a **real-world DevOps project** showcasing Infrastructure as Code, Kubernetes deployment, and AWS cloud architecture.

---

# 📌 Project Overview

This project provisions and deploys:

✅ AWS EKS Cluster using Terraform  
✅ Kubernetes workloads deployment  
✅ Infrastructure as Code setup  
✅ Cloud-native architecture  
✅ Scalable containerized services  
✅ Production-style AWS networking and IAM setup  

The goal of this project is to demonstrate production-ready DevOps practices.

---

# 🏗 Architecture


User → AWS Load Balancer → EKS Cluster → Kubernetes Services → Pods


### Architecture Flow

1. Infrastructure provisioned using Terraform
2. AWS EKS cluster created
3. Kubernetes manifests deployed
4. Load balancer exposes application
5. Containerized workloads run inside Kubernetes pods

---

# ⚙️ Tech Stack

- AWS EKS
- Kubernetes
- Terraform
- Docker
- AWS IAM
- VPC Networking
- Load Balancer
- Infrastructure as Code

---

# 📂 Project Structure


.
├── terraform/ # Infrastructure provisioning
├── k8s/ # Kubernetes manifests
├── README.md


---

# ✅ Prerequisites

Install the following before running the project:

- AWS CLI
- Terraform
- kubectl
- Docker
- AWS Account with required permissions

### Verify Installation

```bash
aws --version
terraform -version
kubectl version --client
docker --version
🔑 AWS Configuration

Configure AWS credentials:

aws configure

Provide:

AWS Access Key

AWS Secret Key

Default Region

Output format

Verify:

aws sts get-caller-identity
🚀 Deployment Guide
1️⃣ Clone Repository
git clone https://github.com/<your-username>/<repo-name>.git
cd <repo-name>
2️⃣ Provision Infrastructure (EKS Cluster)
cd terraform
terraform init
terraform plan
terraform apply

Type yes when prompted.

This will create:

VPC

EKS cluster

Worker nodes

IAM roles

Networking resources

3️⃣ Configure Kubernetes Access

Update kubeconfig:

aws eks update-kubeconfig --region <region> --name <cluster-name>

Verify cluster:

kubectl get nodes
4️⃣ Deploy Kubernetes Resources
kubectl apply -f k8s/

Verify deployment:

kubectl get pods
kubectl get svc
kubectl get ingress
🌐 Access Application

Retrieve LoadBalancer or Ingress URL:

kubectl get svc
kubectl get ingress

Open the URL in browser.

🔍 Monitoring & Debugging
Check Pods
kubectl get pods
Check Logs
kubectl logs <pod-name>
Describe Resources
kubectl describe pod <pod-name>
🛠 Troubleshooting
Cluster not accessible
aws eks update-kubeconfig --region <region> --name <cluster-name>
Pods stuck in pending

Check node capacity:

kubectl get nodes
kubectl describe node <node-name>
Deployment failed

Check events:

kubectl get events
📈 Learning Outcomes

This project demonstrates:

Infrastructure as Code using Terraform

Kubernetes deployment architecture

AWS EKS cluster provisioning

Cloud networking concepts

DevOps automation practices

Production-grade cloud setup

🔐 Security Best Practices Used

IAM role-based access

Kubernetes resource isolation

Private networking architecture

Infrastructure version control

🚀 Future Improvements

CI/CD pipeline integration

Monitoring with Prometheus & Grafana

Auto scaling configuration

Helm chart deployment

Observability setup

👤 Author

Mahesh Khatana
DevOps Engineer | Cloud | Kubernetes | AWS

⭐ Support

If you found this project useful:

⭐ Star the repository
🍴 Fork the repository
📢 Share with others

📄 License

This project is for learning and demonstration purposes.

--
