# Purpose: Define the variables that will be used in the Terraform configuration.
variable "resource_group_name" {
  description = "The name of the resource group containing the AKS cluster."
  type        = string
  default     = "likeminds-load-resource-group"
}

variable "aks_cluster_name" {
  description   = "The name of the AKS cluster."
  type          = string
  default       = "likeminds-load-k8s-cluster"
}

variable "resource_group_location" {
  description = "value of the resource group location."
  type        = string
  default     = "centralindia"
}

variable "namespace_name" {
  description = "The name of the Kubernetes namespace."
  type        = string
  default     = "likeminds-load"
}

## Kettle Variables
variable "enable_kettle" {
  description = "If to enable the Kettle service."
  type        = bool
  default     = true
}

variable "kettle_app_name" {
  description = "The name of the Kettle service."
  type        = string
  default     = "kettle-service"
}

variable "kettle_app_docker_image" {
  description = "The Docker image for the Kettle service."
  type        = string
  default     = "likemindsloadregistry.azurecr.io/likeminds-authentication/kettle"
}

variable "kettle_cpu" {
  description = "The CPU limit for the Kettle service."
  type        = string
  default     = "0.5"
}

variable "kettle_memory" {
  description = "The memory limit for the Kettle service."
  type        = string
  default     = "1Gi"
}

variable "kettle_pods" {
  description = "The number of pods for the Kettle service."
  type        = number
  default     = 1
}