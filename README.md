# Hardened Kubernetes Governance Project (3-Tier)



![Kubernetes](https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)

An enterprise-grade deployment of a 3-tier application (Hair Product App) on a hardened K3s cluster. This project focuses on **Policy-as-Code**, **Infrastructure Hardening**, and **Production Observability**.

## 🚀 Key Features
* **Infrastructure Hardening:** Resolved Linux kernel I/O wait issues and optimized swap management for low-resource environments (t3.micro).
* **Policy-as-Code (OPA Gatekeeper):** Implemented Admission Controllers to enforce mandatory metadata (labels) for FinOps and security compliance.
* **3-Tier Architecture:** Orchestrated a containerized stack featuring Nginx (Frontend), Node.js (Backend), and PostgreSQL (Database).
* **Ingress & Traffic Management:** Configured Traefik Ingress for external access with path-based routing.
* **CI/CD Pipeline:** Integrated GitHub Actions for automated YAML linting and security scanning.

## 🛠 Tech Stack
* **Cloud:** AWS (EC2)
* **Orchestration:** K3s (Lightweight Kubernetes)
* **Governance:** OPA Gatekeeper
* **Observability:** k9s, kubectl
* **CI/CD:** GitHub Actions

## 🏗 Deployment
The cluster uses ConfigMaps for dynamic frontend injection and Persistent Volumes for database reliability. All manifests are governed by Gatekeeper constraints to ensure only compliant workloads reach production.


## Security Verification
This platform successfully implements Admission Control using OPA Gatekeeper.

### Test Case: Privilege Escalation
- **Target:** `attacks/privilege-escalation/malicious-pod.yaml`
- **Action:** Blocked by `K8sPSPPrivilegedContainer` constraint.
- **Result:** `Error from server (Forbidden): admission webhook "validation.gatekeeper.sh" denied the request`
---
*Created by Sheriff Salam - Senior DevOps & SRE*
