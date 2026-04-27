# Infrastructure variables

variable "environment" {
  description = "Deployment environment (dev/staging/prod)"
  type        = string
  default     = "dev"
}

variable "region" {
  description = "Infrastructure region"
  type        = string
  default     = "eu-west-1"
}
