# Architecture Decision Records (ADR)

## ADR 001: Use of OPA Gatekeeper for Admission Control
- **Context**: Need to prevent root-level container escapes.
- **Decision**: Implemented OPA Gatekeeper over Kyverno to leverage Rego for complex logic.
- **Constraint**: Optimized for low-memory environments (t3.micro) by scaling audit pods to zero.
