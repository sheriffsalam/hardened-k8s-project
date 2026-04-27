# Production-Hardened Kubernetes Platform

An enterprise-grade Kubernetes bootstrap optimized for security and resource efficiency. This platform implements a **Defense-in-Depth** strategy to mitigate container escapes and unauthorized access.

## 🛡️ Core Security Controls
- **Admission Control**: OPA Gatekeeper enforcing `K8sPSPPrivilegedContainer`.
- **Infrastructure Hardening**: Automated CIS Benchmark remediation for K3s.
- **Identity & Access**: Strict RBAC and hardened Kubeconfig permissions.

## 🚀 Key Engineering Accomplishments
- **Resource Triage**: Optimized security controller footprint for low-memory environments (t3.micro).
- **Incident Recovery**: Resolved stuck namespace finalizers and API server timeouts during high-load events.

## 📊 Verification
Run the automated adversarial test suite:
```bash
./tests/adversarial/verify-security.sh
```
