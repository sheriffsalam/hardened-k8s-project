# Platform Operations Runbook

## Incident: Stuck Namespace (Terminating)
**Symptom**: Namespace hangs in 'Terminating' state indefinitely.
**Resolution**:
1. Identify blocking finalizers.
2. Patch the resource to remove finalizers:
   `kubectl patch ns <namespace> -p '{"spec":{"finalizers":null}}' --type=merge`

## Incident: API Server Timeout (Resource Exhaustion)
**Symptom**: `context deadline exceeded` errors during kubectl apply.
**Resolution**:
1. Scale down non-essential security pods (e.g., `gatekeeper-audit`).
2. Use `--validate=false` to bypass client-side OpenAPI discovery overhead.
