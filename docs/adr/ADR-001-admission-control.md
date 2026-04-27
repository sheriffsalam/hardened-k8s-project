# ADR 001: Selection of OPA Gatekeeper for Admission Control

## Context
The platform requires strict enforcement of the Principle of Least Privilege to prevent container escapes.

## Decision
We selected **OPA Gatekeeper** over Kyverno for its robust Rego-based engine, allowing for future expansion into complex security logic.

## Status
**Implemented.** Optimized for resource-constrained nodes (t3.micro) by disabling audit-side effects to maintain API responsiveness.
