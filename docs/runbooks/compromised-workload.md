# Compromised Workload Runbook

## Scenario

A container is suspected of malicious or unauthorized behavior.

---

## 1. Detection Signals

- unusual network traffic
- unexpected privilege escalation attempts
- abnormal CPU/memory usage
- audit log violations

---

## 2. Immediate Actions

### Step 1: Isolate Workload
Apply network restrictions to block ingress/egress traffic.

### Step 2: Preserve Evidence
Do not immediately delete logs or pods before investigation.

### Step 3: Identify Permissions
Inspect:

- service account permissions
- mounted secrets
- node access scope

---

## 3. Containment

- terminate compromised pod
- revoke associated credentials
- isolate namespace if required

---

## 4. Recovery

- redeploy from GitOps source
- ensure policy compliance before redeployment
- verify no persistence mechanisms remain

---

## 5. Prevention

- tighten RBAC rules
- enforce stricter admission policies
- improve runtime detection coverage
