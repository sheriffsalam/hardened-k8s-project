# Threat Model: Hardened K8s Platform

| Threat | Mitigation | Component |
| :--- | :--- | :--- |
| **Privilege Escalation** | OPA Gatekeeper Admission Controller | Validating Webhook |
| **Unauthorized Access** | RBAC Least Privilege & Kubeconfig hardening | IAM/RBAC |
| **Insecure Images** | (Planned) Vulnerability Scanning & Attestation | CI/CD Pipeline |
