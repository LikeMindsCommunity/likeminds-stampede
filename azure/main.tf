
# Define resource group
data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

# Define AKS cluster
data "azurerm_kubernetes_cluster" "aks" {
    name                = var.aks_cluster_name
    resource_group_name = var.resource_group_name
}

# Define a Kubernetes namespace (optional)
data "kubernetes_namespace" "namespace" {
  metadata {
    name = var.namespace_name
  }
}

locals {
  http_port_service = "http" 
  amqp_port_service = "amqp"
  http_port_8080 = 8080
  http_port_8081 = 8081
  http_port_15672 = 15672
  http_port_5672 = 5672
  type_cluster_ip = "ClusterIP"
  app_version = "0.1.0"
}
