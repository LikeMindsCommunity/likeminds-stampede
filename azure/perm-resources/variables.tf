# Purpose: Define the variables that will be used in the Terraform configuration.
variable "resource_group_name" {
  description = "The name of the resource group containing the AKS cluster."
  type        = string
  default     = "likeminds-load-resource-group"
}

variable "resource_location" {
  description = "value of the resource group location."
  type        = string
  default     = "centralindia"
}

variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
  default     = "likeminds-load-virtual-network-central-india"
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
  default     = "likeminds-load-app-subnet"
}


## Elasticsearch-VM variables
variable "es_vm_admin_user_name" {
  description = "The admin user name for the Elasticsearch VM."
  type        = string
  default     = "likeminds-load-es-admin"
}

variable "es_vm_admin_password" {
  description = "The admin password for the Elasticsearch VM."
  type        = string
  default     = "!Likeminds-es-password"
}


## Jenkins-VM variables
variable "jenkins_vm_admin_user_name" {
  description = "The admin user name for the Elasticsearch VM."
  type        = string
  default     = "likeminds-load-jenkins-admin"
}

variable "jenkins_vm_admin_password" {
  description = "The admin password for the Elasticsearch VM."
  type        = string
  default     = "!Likeminds-jenkins-password"
}
