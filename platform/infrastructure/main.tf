# Infrastructure definition for Kubernetes platform

# NOTE: This is a structural representation of infrastructure design.
# Actual provider configuration can be added per environment.

terraform {
  required_version = ">= 1.5.0"
}

# Cluster foundation (conceptual layer)
module "cluster" {
  source = "./modules/cluster"
}

# Networking layer (conceptual layer)
module "network" {
  source = "./modules/network"
}
