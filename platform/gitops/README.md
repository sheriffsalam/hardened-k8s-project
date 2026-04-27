# GitOps Layer

## Purpose

This directory defines the desired state of the Kubernetes platform
using a GitOps-driven workflow.

All platform changes are declared in Git and reconciled automatically.

---

## Design Principle

Git is the single source of truth for:

- workloads
- policies
- configuration
- environment definitions

No manual kubectl operations are considered part of normal operation.

---

## Future Integration

This layer is intended to integrate with:

- ArgoCD or Flux
- policy validation pipelines
- automated reconciliation loops
