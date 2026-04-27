#!/bin/bash
# SRE Security Validation Script
echo "--- Starting Security Verification ---"

# 1. Check Admission Controller
echo "Checking Gatekeeper Health..."
kubectl get pods -n gatekeeper-system | grep Running

# 2. Trigger Adversarial Test
echo "Attempting to deploy privileged pod (Attacker Simulation)..."
RESPONSE=$(kubectl apply -f platform/security/malicious-pod.yaml 2>&1)

if [[ $RESPONSE == *"Forbidden"* ]]; then
    echo "✅ SUCCESS: Policy Enforced. Attack blocked."
else
    echo "❌ FAILURE: Vulnerability Detected. Policy not enforced."
    exit 1
fi
