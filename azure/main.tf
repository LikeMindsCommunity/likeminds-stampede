
# Define resource group
data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

# Define AKS cluster
data "azurerm_kubernetes_cluster" "aks" {
    name                = var.aks_cluster_name
    resource_group_name = var.resource_group_name
}

# Define a Kubernetes namespace
data "kubernetes_namespace" "namespace" {
  metadata {
    name = var.namespace_name
  }
}

locals {
  app_version = "0.1.0"

  http_port_service = "http" 
  amqp_port_service = "amqp"

  http_port_8000 = 8000
  http_port_8080 = 8080
  http_port_8081 = 8081
  http_port_15672 = 15672
  http_port_5672 = 5672

  type_cluster_ip = "ClusterIP"
  ingress_class_name = "webapprouting.kubernetes.azure.com"
  
  image_pull_secrets_name = "acr-secret"
  load_domain_tls_secret_name = "load-domain-tls-secret"

  caravan_celery_secret_name = "caravan-celery-secret"
  broker_url_env_name = "CELERY_BROKER_URL"

  rabbitmq_user_secret_name = "rabbitmq-user-secret"
  rabbitmq_default_user_key = "RABBITMQ_DEFAULT_USER"
  rabbitmq_default_password_key = "RABBITMQ_DEFAULT_PASS"

  kettle_load_host = "kettle-loadtest.likeminds.community"
  caravan_load_host = "caravan-loadtest.likeminds.community"
  swarm_load_host = "swarm-loadtest.likeminds.community"
  skulk_load_host = "skulk-loadtest.likeminds.community"
}
