#!/bin/bash
echo "Starting Security Validation..."
echo "1. Checking Gatekeeper Status..."
kubectl get pods -n gatekeeper-system
echo "2. Attempting Unauthorized Deployment..."
RESULT=$(kubectl apply -f platform/validation-tests/privilege-escalation/malicious-pod.yaml 2>&1)
if [[ $RESULT == *"Forbidden"* ]]; then
  echo "SUCCESS: Security Policy Enforced."
else
  echo "FAILURE: Security Policy Bypassed."
fi
