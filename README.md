# Production-Hardened Kubernetes Platform (Enterprise Grade)

[![Security: OPA Gatekeeper](https://img.shields.io/badge/Security-OPA%20Gatekeeper-blue)](https://open-policy-agent.github.io/gatekeeper/website/docs/)

## 🚀 Overview
This repository contains a production-ready, security-hardened Kubernetes bootstrap. Unlike standard clusters, this platform implements **Admission Control**, **Runtime Security**, and **Least-Privilege RBAC** by default.

## 🛡️ Hardening Features
- **Admission Control**: Prevents privileged container execution via OPA Gatekeeper.
- **Node Hardening**: Automated CIS Benchmark remediation for K3s.
- **Resource Triage**: SRE-optimized deployments for constrained environments.

## 📁 Repository Structure
- `platform/`: Core infrastructure and security manifests.
- `docs/`: Architecture diagrams, Threat Models, and ADRs.
- `scripts/`: Validation and compliance testing (kube-bench).

## 🛠️ Operational Validation
To verify the hardening policy, run:
```bash
kubectl apply -f platform/validation-tests/privilege-escalation/malicious-pod.yaml
# Expected Result: 403 Forbidden (Denied by Gatekeeper)
```
