# Platform Threat Model (STRIDE)

| Threat | Category | Mitigation Strategy |
| :--- | :--- | :--- |
| **Privilege Escalation** | Elevation of Privilege | OPA Gatekeeper policy: `K8sPSPPrivilegedContainer` |
| **Unauthorized API Access** | Spoofing | RBAC Hardening & Kubeconfig permission restriction (0600) |
| **Lateral Movement** | Information Disclosure | (Planned) Kubernetes NetworkPolicies for namespace isolation |
